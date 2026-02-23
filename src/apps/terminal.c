#include "terminal.h"
#include "framebuffer.h"
#include "string.h"

static uint32_t term_x = 0;
static uint32_t term_y = 0;
static uint32_t term_color = 0xFFFFFFFF; // White

void terminal_clear(void) {
    fb_clear(0x00000000); // Black
    term_x = 0;
    term_y = 0;
}

void terminal_init(void) {
    term_x = 0;
    term_y = 0;
    terminal_clear();
}

void terminal_putchar(char c) {
    if (c == '\n') {
        term_x = 0;
        term_y += 16;
        return;
    }

    fb_draw_char(term_x, term_y, c, term_color);
    term_x += 8;

    if (term_x >= fb_get_width()) {
        term_x = 0;
        term_y += 16;
    }

    if (term_y >= fb_get_height()) {
        term_y = 0; // Wrap around
    }
}

void terminal_write(const char* data, size_t size) {
    for (size_t i = 0; i < size; i++) {
        terminal_putchar(data[i]);
    }
}

void terminal_writestring(const char* data) {
    terminal_write(data, strlen(data));
}
