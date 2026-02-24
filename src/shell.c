#include "shell.h"
#include "gui.h"
#include "sound.h"
#include "string.h"
#include "memory.h"
#include "types.h"

extern uint8_t font_8x16[];

#define SHELL_MAX_LINES 20
#define SHELL_COLS 50
#define CMD_BUF_SIZE 256

static char shell_buffer[SHELL_MAX_LINES][SHELL_COLS];
static int shell_cursor_row = 0;
static int shell_cursor_col = 0;

static char cmd_buf[CMD_BUF_SIZE];
static int cmd_len = 0;

// Helper to draw char to a window buffer
static void draw_char_to_buffer(uint32_t* buffer, int buf_w, int buf_h, int x, int y, char c, uint32_t color) {
    if (x < 0 || y < 0 || x + 8 > buf_w || y + 16 > buf_h) return;

    uint8_t* glyph = &font_8x16[(unsigned char)c * 16];

    for (int row = 0; row < 16; row++) {
        uint8_t bits = glyph[row];
        for (int col = 0; col < 8; col++) {
            if (bits & (1 << (7 - col))) {
                buffer[(y + row) * buf_w + (x + col)] = color;
            }
        }
    }
}

static void draw_string_to_buffer(uint32_t* buffer, int buf_w, int buf_h, int x, int y, const char* str, uint32_t color) {
    while (*str) {
        draw_char_to_buffer(buffer, buf_w, buf_h, x, y, *str, color);
        x += 8;
        str++;
    }
}

static int my_atoi(const char* str) {
    int res = 0;
    while (*str >= '0' && *str <= '9') {
        res = res * 10 + (*str - '0');
        str++;
    }
    return res;
}

static void shell_clear_screen(void) {
    for (int i = 0; i < SHELL_MAX_LINES; i++) {
        for (int j = 0; j < SHELL_COLS; j++) {
            shell_buffer[i][j] = 0;
        }
    }
    shell_cursor_row = 0;
    shell_cursor_col = 0;
}

static void shell_scroll(void) {
    for (int i = 0; i < SHELL_MAX_LINES - 1; i++) {
        memcpy(shell_buffer[i], shell_buffer[i+1], SHELL_COLS);
    }
    memset(shell_buffer[SHELL_MAX_LINES - 1], 0, SHELL_COLS);
    shell_cursor_row = SHELL_MAX_LINES - 1;
}

static void shell_print(const char* str) {
    while (*str) {
        if (*str == '\n') {
            shell_cursor_row++;
            shell_cursor_col = 0;
            if (shell_cursor_row >= SHELL_MAX_LINES) {
                shell_scroll();
            }
        } else {
            if (shell_cursor_col >= SHELL_COLS) {
                shell_cursor_row++;
                shell_cursor_col = 0;
                if (shell_cursor_row >= SHELL_MAX_LINES) {
                    shell_scroll();
                }
            }
            shell_buffer[shell_cursor_row][shell_cursor_col++] = *str;
        }
        str++;
    }
}

static void shell_draw(window_t* w) {
    // Clear background
    for (int i = 0; i < w->w * w->h; i++) {
        w->buffer[i] = 0xFF000000; // Black
    }

    // Draw buffer content
    for (int i = 0; i < SHELL_MAX_LINES; i++) {
        for (int j = 0; j < SHELL_COLS; j++) {
            char c = shell_buffer[i][j];
            if (c) {
                draw_char_to_buffer(w->buffer, w->w, w->h, j * 8 + 5, i * 16 + 5, c, 0xFFFFFFFF);
            }
        }
    }

    // Draw command line at cursor
    // The current command being typed is already in shell_buffer if we echo it immediately.
    // Or we can treat cmd_buf separately.
    // Let's treat cmd_buf separately for cleaner input handling?
    // No, simpler to just echo to buffer and process buffer on newline?
    // But then backspace is hard.

    // Better: shell_print writes to "committed" buffer.
    // We also draw cmd_buf at current cursor position.

    int cursor_x = shell_cursor_col * 8 + 5;
    int cursor_y = shell_cursor_row * 16 + 5;

    // Draw cmd_buf
    draw_string_to_buffer(w->buffer, w->w, w->h, cursor_x, cursor_y, cmd_buf, 0xFF00FF00);

    // Draw cursor block
    int cmd_pixel_len = cmd_len * 8;
    for (int y = 0; y < 16; y++) {
        for (int x = 0; x < 8; x++) {
            w->buffer[(cursor_y + y) * w->w + (cursor_x + cmd_pixel_len + x)] = 0xFFFFFFFF;
        }
    }
}

static void shell_execute(const char* cmd) {
    if (strncmp(cmd, "play ", 5) == 0) {
        int freq = my_atoi(cmd + 5);
        sound_play(freq);
        shell_print("Playing frequency ");
        char buf[16];
        itoa(freq, buf, 10);
        shell_print(buf);
        shell_print("Hz\n");
    } else if (strcmp(cmd, "stop") == 0) {
        sound_stop();
        shell_print("Sound stopped.\n");
    } else if (strcmp(cmd, "beep") == 0) {
        shell_print("Beep!\n");
        sound_beep();
    } else if (strcmp(cmd, "help") == 0) {
        shell_print("Commands:\n");
        shell_print("  play <freq> - Play tone\n");
        shell_print("  stop        - Stop sound\n");
        shell_print("  beep        - Beep\n");
        shell_print("  clear       - Clear screen\n");
        shell_print("  help        - Show this\n");
    } else if (strcmp(cmd, "clear") == 0) {
        shell_clear_screen();
    } else {
        shell_print("Unknown command: ");
        shell_print(cmd);
        shell_print("\n");
    }
}

static void shell_on_key(window_t* w, char c) {
    (void)w;
    if (c == '\b') {
        if (cmd_len > 0) {
            cmd_buf[--cmd_len] = 0;
        }
    } else if (c == '\n') {
        shell_print("> ");
        shell_print(cmd_buf);
        shell_print("\n");

        shell_execute(cmd_buf);

        cmd_len = 0;
        cmd_buf[0] = 0;
    } else {
        if (cmd_len < CMD_BUF_SIZE - 1) {
            cmd_buf[cmd_len++] = c;
            cmd_buf[cmd_len] = 0;
        }
    }
}

void shell_init(void) {
    shell_clear_screen();
    shell_print("SlopOS Shell v1.0\n");
    shell_print("Type 'help' for commands.\n");

    window_t* w = gui_create_window("Shell", 50, 50, 420, 340);
    w->draw = shell_draw;
    w->on_key = shell_on_key;
}
