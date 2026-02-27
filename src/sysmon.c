#include "sysmon.h"
#include "framebuffer.h"
#include "memory.h"
#include "string.h"
#include "pit.h"

// Helper to format integers
static void simple_itoa(uint32_t val, char* buf) {
    if (val == 0) {
        buf[0] = '0';
        buf[1] = 0;
        return;
    }
    char temp[16];
    int i = 0;
    while (val > 0) {
        temp[i++] = (val % 10) + '0';
        val /= 10;
    }
    int j = 0;
    while (i > 0) {
        buf[j++] = temp[--i];
    }
    buf[j] = 0;
}

extern uint8_t font_8x16[];

static void draw_char(window_t* win, int x, int y, char c, uint32_t color) {
    uint8_t* glyph = &font_8x16[(unsigned char)c * 16];
    for (int r = 0; r < 16; r++) {
        for (int k = 0; k < 8; k++) {
            if (glyph[r] & (1 << (7-k))) {
                if (x+k < win->w && y+r < win->h)
                    win->buffer[(y+r)*win->w + (x+k)] = color;
            }
        }
    }
}

static void draw_string(window_t* win, int x, int y, const char* str, uint32_t color) {
    while (*str) {
        draw_char(win, x, y, *str++, color);
        x += 8;
    }
}

void sysmon_draw(window_t* win) {
    // Clear content
    for (int i = 0; i < win->w * win->h; i++) {
        win->buffer[i] = 0xFFCCCCCC;
    }

    uint32_t used = memory_get_used();
    uint32_t total = memory_get_total();
    uint32_t uptime = pit_get_ticks();

    // Memory Text
    char buf[64];
    strcpy(buf, "Memory: ");
    char num[16];

    simple_itoa(used / 1024, num);
    strcat(buf, num);
    strcat(buf, " KB / ");

    simple_itoa(total / 1024, num);
    strcat(buf, num);
    strcat(buf, " KB");

    draw_string(win, 10, 10, "System Monitor", 0xFF000000);
    draw_string(win, 10, 30, buf, 0xFF000088);

    // Bar graph
    int bar_w = 200;
    int bar_h = 20;
    int filled = 0;
    if (total > 0)
        // Use 64-bit to prevent overflow: 20MB * 200 > 2^32
        filled = ((uint64_t)used * bar_w) / total;

    // Draw bar background
    for(int j=50; j<50+bar_h; j++) {
        for(int i=10; i<10+bar_w; i++) {
            if (j < win->h && i < win->w)
                win->buffer[j*win->w + i] = 0xFFFFFFFF;
        }
    }
    // Draw filled
    for(int j=50; j<50+bar_h; j++) {
        for(int i=10; i<10+filled; i++) {
            if (j < win->h && i < win->w)
                win->buffer[j*win->w + i] = 0xFF00FF00;
        }
    }

    // Uptime
    strcpy(buf, "Uptime: ");
    simple_itoa(uptime, num);
    strcat(buf, num);
    strcat(buf, " ticks");
    draw_string(win, 10, 80, buf, 0xFF000000);

    // Instruction to user
    draw_string(win, 10, 110, "Updates on Mouse Move/Key", 0xFF555555);
}

void sysmon_init(window_t* win) {
    win->draw = sysmon_draw;
}
