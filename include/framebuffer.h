#ifndef FRAMEBUFFER_H
#define FRAMEBUFFER_H

#include "types.h"

void fb_init(void);
void fb_clear(uint32_t color);
void fb_put_pixel(int32_t x, int32_t y, uint32_t color);
uint32_t fb_get_pixel(int32_t x, int32_t y);
void fb_flip(void);

uint32_t fb_get_width(void);
uint32_t fb_get_height(void);

void fb_draw_rect(int32_t x, int32_t y, int32_t w, int32_t h, uint32_t color);
void fb_fill_rect(int32_t x, int32_t y, int32_t w, int32_t h, uint32_t color);
void fb_fill_rounded_rect(int32_t x, int32_t y, int32_t w, int32_t h, int32_t r, uint32_t color);
void fb_fill_circle(int32_t cx, int32_t cy, int32_t r, uint32_t color);

void fb_draw_char(int32_t x, int32_t y, char c, uint32_t color);
void fb_draw_string(int32_t x, int32_t y, const char* str, uint32_t color);
void fb_draw_string_nobg(int32_t x, int32_t y, const char* str, uint32_t color);

void fb_blend_pixel(int32_t x, int32_t y, uint32_t color, uint8_t alpha);

#endif
