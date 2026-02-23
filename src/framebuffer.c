#include "framebuffer.h"
#include "multiboot.h"
#include "memory.h"
#include "string.h"

extern multiboot_info_t* multiboot_info_ptr;
extern uint8_t font_8x16[];

static uint32_t *fb_addr = 0;
static uint32_t *back = 0;
static uint32_t fb_w = 0;
static uint32_t fb_h = 0;
static uint32_t fb_pitch = 0;
static uint32_t fb_bpp = 0;

void fb_init(void) {
    if (!multiboot_info_ptr) return;

    if (multiboot_info_ptr->flags & (1 << 12)) {
        fb_addr = (uint32_t*)(uintptr_t)multiboot_info_ptr->framebuffer_addr;
        fb_w = multiboot_info_ptr->framebuffer_width;
        fb_h = multiboot_info_ptr->framebuffer_height;
        fb_pitch = multiboot_info_ptr->framebuffer_pitch;
        fb_bpp = multiboot_info_ptr->framebuffer_bpp;

        back = (uint32_t*)kmalloc(fb_w * fb_h * 4);
    }
}

void fb_put_pixel(int32_t x, int32_t y, uint32_t color) {
    if (x < 0 || x >= (int32_t)fb_w || y < 0 || y >= (int32_t)fb_h) return;

    if (back) {
        back[y * fb_w + x] = color;
    } else if (fb_addr) {
        uint32_t offset = y * fb_pitch + x * (fb_bpp / 8);
        *(uint32_t*)((uint8_t*)fb_addr + offset) = color;
    }
}

uint32_t fb_get_pixel(int32_t x, int32_t y) {
    if (x < 0 || x >= (int32_t)fb_w || y < 0 || y >= (int32_t)fb_h) return 0;

    if (back) {
        return back[y * fb_w + x];
    } else if (fb_addr) {
        uint32_t offset = y * fb_pitch + x * (fb_bpp / 8);
        return *(uint32_t*)((uint8_t*)fb_addr + offset);
    }
    return 0;
}

void fb_flip(void) {
    if (!back || !fb_addr) return;

    uint8_t* dst = (uint8_t*)fb_addr;
    uint32_t* src = back;

    for (uint32_t y = 0; y < fb_h; y++) {
        memcpy(dst, src, fb_w * 4);
        dst += fb_pitch;
        src += fb_w;
    }
}

void fb_clear(uint32_t color) {
    if (back) {
        for (uint32_t i = 0; i < fb_w * fb_h; i++) {
            back[i] = color;
        }
    } else if (fb_addr) {
        for (uint32_t y = 0; y < fb_h; y++) {
            for (uint32_t x = 0; x < fb_w; x++) {
                fb_put_pixel(x, y, color);
            }
        }
    }
}

void fb_draw_rect(int32_t x, int32_t y, int32_t w, int32_t h, uint32_t color) {
    for (int32_t i = x; i < x + w; i++) {
        fb_put_pixel(i, y, color);
        fb_put_pixel(i, y + h - 1, color);
    }
    for (int32_t j = y; j < y + h; j++) {
        fb_put_pixel(x, j, color);
        fb_put_pixel(x + w - 1, j, color);
    }
}

void fb_fill_rect(int32_t x, int32_t y, int32_t w, int32_t h, uint32_t color) {
    for (int32_t j = y; j < y + h; j++) {
        for (int32_t i = x; i < x + w; i++) {
            fb_put_pixel(i, j, color);
        }
    }
}

void fb_fill_circle(int32_t cx, int32_t cy, int32_t r, uint32_t color) {
    for (int32_t y = -r; y <= r; y++) {
        for (int32_t x = -r; x <= r; x++) {
            if (x * x + y * y <= r * r) {
                fb_put_pixel(cx + x, cy + y, color);
            }
        }
    }
}

void fb_fill_rounded_rect(int32_t x, int32_t y, int32_t w, int32_t h, int32_t r, uint32_t color) {
    fb_fill_circle(x + r, y + r, r, color);
    fb_fill_circle(x + w - r - 1, y + r, r, color);
    fb_fill_circle(x + r, y + h - r - 1, r, color);
    fb_fill_circle(x + w - r - 1, y + h - r - 1, r, color);

    fb_fill_rect(x + r, y, w - 2 * r, h, color);
    fb_fill_rect(x, y + r, r, h - 2 * r, color);
    fb_fill_rect(x + w - r, y + r, r, h - 2 * r, color);
}

void fb_draw_char(int32_t x, int32_t y, char c, uint32_t color) {
    uint8_t* glyph = &font_8x16[(unsigned char)c * 16];

    for (int row = 0; row < 16; row++) {
        uint8_t bits = glyph[row];
        for (int col = 0; col < 8; col++) {
            if (bits & (1 << (7 - col))) {
                fb_put_pixel(x + col, y + row, color);
            }
        }
    }
}

void fb_draw_string(int32_t x, int32_t y, const char* str, uint32_t color) {
    while (*str) {
        fb_draw_char(x, y, *str, color);
        x += 8;
        str++;
    }
}

void fb_draw_string_nobg(int32_t x, int32_t y, const char* str, uint32_t color) {
    fb_draw_string(x, y, str, color);
}

void fb_blend_pixel(int32_t x, int32_t y, uint32_t color, uint8_t alpha) {
    if (alpha == 0) return;
    if (alpha == 255) {
        fb_put_pixel(x, y, color);
        return;
    }

    uint32_t bg = fb_get_pixel(x, y);

    uint32_t rb = bg & 0xFF00FF;
    uint32_t g = bg & 0x00FF00;

    uint32_t rb2 = color & 0xFF00FF;
    uint32_t g2 = color & 0x00FF00;

    uint32_t inv_alpha = 256 - alpha;

    rb = ((rb * inv_alpha) + (rb2 * alpha)) >> 8;
    g = ((g * inv_alpha) + (g2 * alpha)) >> 8;

    uint32_t out_color = (rb & 0xFF00FF) | (g & 0x00FF00);
    fb_put_pixel(x, y, out_color);
}

uint32_t fb_get_width(void) { return fb_w; }
uint32_t fb_get_height(void) { return fb_h; }
