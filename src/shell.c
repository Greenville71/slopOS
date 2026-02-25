#include "shell.h"
#include "sound.h"
#include "string.h"
#include "memory.h"
#include "framebuffer.h"

#define SHELL_COLS 80
#define SHELL_ROWS 25
#define CHAR_W 8
#define CHAR_H 16

// Extern font data
extern uint8_t font_8x16[];

// Shell state
static char shell_buffer[SHELL_ROWS][SHELL_COLS];
static int cursor_x = 0;
static int cursor_y = 0;
static uint32_t shell_fg = 0xFFFFFFFF; // White
static uint32_t shell_bg = 0xFF000000; // Black

// Forward decls
static void shell_redraw(window_t* win);
static void shell_print(window_t* win, const char* str);
static void shell_exec(window_t* win, const char* cmd);

// Draw a char to the window's pixel buffer
static void shell_draw_char(window_t* win, int x, int y, char c, uint32_t color) {
    if (!win->buffer) return;

    uint8_t* glyph = &font_8x16[(unsigned char)c * 16];

    for (int row = 0; row < 16; row++) {
        uint8_t bits = glyph[row];
        for (int col = 0; col < 8; col++) {
            if (bits & (1 << (7 - col))) {
                int px = x + col;
                int py = y + row;
                if (px < win->w && py < win->h) {
                    win->buffer[py * win->w + px] = color;
                }
            }
        }
    }
}

// Redraw the entire shell content to the window buffer
static void shell_redraw(window_t* win) {
    if (!win->buffer) return;

    // Fill background
    for (int i = 0; i < win->w * win->h; i++) {
        win->buffer[i] = shell_bg;
    }

    // Draw text
    for (int r = 0; r < SHELL_ROWS; r++) {
        for (int c = 0; c < SHELL_COLS; c++) {
            char ch = shell_buffer[r][c];
            if (ch) {
                shell_draw_char(win, c * CHAR_W, r * CHAR_H, ch, shell_fg);
            }
        }
    }

    // Draw cursor (block)
    int cx = cursor_x * CHAR_W;
    int cy = cursor_y * CHAR_H;

    if (cx < win->w && cy < win->h) {
        for (int h = 0; h < CHAR_H; h++) {
            for (int w = 0; w < CHAR_W; w++) {
                int px = cx + w;
                int py = cy + h;
                if (px < win->w && py < win->h) {
                    win->buffer[py * win->w + px] = shell_fg;
                }
            }
        }
    }
}

static void shell_scroll(void) {
    // Shift lines up
    for (int r = 0; r < SHELL_ROWS - 1; r++) {
        for (int c = 0; c < SHELL_COLS; c++) {
            shell_buffer[r][c] = shell_buffer[r+1][c];
        }
    }
    // Clear last line
    for (int c = 0; c < SHELL_COLS; c++) {
        shell_buffer[SHELL_ROWS - 1][c] = 0;
    }
    cursor_y--;
}

static void shell_putchar(window_t* win, char c) {
    if (c == '\n') {
        cursor_x = 0;
        cursor_y++;
        if (cursor_y >= SHELL_ROWS) {
            shell_scroll();
        }
    } else if (c == '\b') {
        if (cursor_x > 0) {
            cursor_x--;
            shell_buffer[cursor_y][cursor_x] = 0;
        } else if (cursor_y > 0) {
             // Optional: Backspace to previous line
        }
    } else {
        if (cursor_x < SHELL_COLS) {
            shell_buffer[cursor_y][cursor_x] = c;
            cursor_x++;
        }
        if (cursor_x >= SHELL_COLS) {
            cursor_x = 0;
            cursor_y++;
            if (cursor_y >= SHELL_ROWS) {
                shell_scroll();
            }
        }
    }
    shell_redraw(win);
}

static void shell_print(window_t* win, const char* str) {
    while (*str) {
        shell_putchar(win, *str++);
    }
}

// Command buffer
static char cmd_buf[128];
static int cmd_len = 0;

static int atoi(const char* str) {
    int res = 0;
    while (*str >= '0' && *str <= '9') {
        res = res * 10 + (*str - '0');
        str++;
    }
    return res;
}

static void shell_exec(window_t* win, const char* cmd) {
    shell_putchar(win, '\n');

    if (strcmp(cmd, "beep") == 0) {
        sound_beep();
        shell_print(win, "Beep!\n");
    } else if (strncmp(cmd, "play ", 5) == 0) {
        int freq = atoi(cmd + 5);
        if (freq > 0) {
            sound_play(freq);
            shell_print(win, "Playing tone.\n");
        } else {
            shell_print(win, "Invalid frequency.\n");
        }
    } else if (strcmp(cmd, "stop") == 0) {
        sound_stop();
        shell_print(win, "Sound stopped.\n");
    } else if (strcmp(cmd, "clear") == 0) {
        for(int r=0; r<SHELL_ROWS; r++)
            for(int c=0; c<SHELL_COLS; c++)
                shell_buffer[r][c] = 0;
        cursor_x = 0;
        cursor_y = 0;
        shell_redraw(win);
        // Prompt will be printed by caller if we returned, but here we cleared screen.
        // We should print prompt.
    } else if (strcmp(cmd, "help") == 0) {
        shell_print(win, "Available commands:\n");
        shell_print(win, " beep        - Play a short beep\n");
        shell_print(win, " play <freq> - Play a tone at frequency Hz\n");
        shell_print(win, " stop        - Stop playing sound\n");
        shell_print(win, " clear       - Clear the screen\n");
        shell_print(win, " help        - Show this help\n");
    } else if (strlen(cmd) > 0) {
        shell_print(win, "Unknown command: ");
        shell_print(win, cmd);
        shell_putchar(win, '\n');
    }

    shell_print(win, "> ");
}

void shell_on_key(window_t* win, char c) {
    if (c == '\n') {
        cmd_buf[cmd_len] = 0;
        shell_exec(win, cmd_buf);
        cmd_len = 0;
    } else if (c == '\b') {
        if (cmd_len > 0) {
            cmd_len--;
            shell_putchar(win, '\b');
        }
    } else {
        if (cmd_len < 127) {
            cmd_buf[cmd_len++] = c;
            shell_putchar(win, c);
        }
    }
}

void shell_init(window_t* win) {
    // Reset state
    for(int r=0; r<SHELL_ROWS; r++)
        for(int c=0; c<SHELL_COLS; c++)
            shell_buffer[r][c] = 0;

    cursor_x = 0;
    cursor_y = 0;
    cmd_len = 0;

    win->on_key = shell_on_key;

    shell_redraw(win);
    shell_print(win, "SlopOS Shell v0.1\nType 'help' for commands.\n> ");
}
