#ifndef GUI_H
#define GUI_H

#include "types.h"

typedef struct window {
    int32_t x, y;
    int32_t w, h;
    char title[32];
    uint32_t* buffer; // Window content buffer
    struct window* next;

    // Callback for drawing content
    void (*draw)(struct window* w);
    // Callback for input
    void (*on_key)(struct window* w, char c);
    void (*on_mouse)(struct window* w, int32_t x, int32_t y, int buttons);
} window_t;

void gui_init(void);
void gui_run(void);

window_t* gui_create_window(const char* title, int32_t x, int32_t y, int32_t w, int32_t h);
void gui_close_window(window_t* w);

#endif
