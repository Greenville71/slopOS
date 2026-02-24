#include "gui.h"
#include "framebuffer.h"
#include "mouse.h"
#include "keyboard.h"
#include "memory.h"
#include "string.h"
#include "terminal.h"
#include "shell.h"

// App spawners
void sp_terminal(void);
void sp_notepad(void);
void sp_calc(void);
void sp_game(void);
void sp_files(void);
void sp_settings(void);
void sp_physics(void);

// Global state
window_t* windows = NULL;
window_t* focused_window = NULL;

void gui_init(void) {
    //
}

window_t* gui_create_window(const char* title, int32_t x, int32_t y, int32_t w, int32_t h) {
    window_t* win = (window_t*)kmalloc(sizeof(window_t));
    win->x = x;
    win->y = y;
    win->w = w;
    win->h = h;
    strcpy(win->title, title);
    win->buffer = (uint32_t*)kmalloc(w * h * 4);
    memset(win->buffer, 0xFF, w * h * 4); // White background
    win->draw = NULL;
    win->on_key = NULL;
    win->on_mouse = NULL;

    // Add to list (front)
    win->next = windows;
    windows = win;
    focused_window = win;
    return win;
}

void gui_close_window(window_t* w) {
    if (!w) return;

    if (windows == w) {
        windows = w->next;
    } else {
        window_t* curr = windows;
        while (curr && curr->next != w) {
            curr = curr->next;
        }
        if (curr) {
            curr->next = w->next;
        }
    }

    if (focused_window == w) {
        focused_window = windows;
    }

    // Free(w->buffer); // No free in this allocator
    // Free(w);
}

// Drawing helpers
void gui_draw_window(window_t* w) {
    // Draw frame
    int border = 2;
    int title_bar = 20;

    fb_fill_rect(w->x - border, w->y - title_bar - border, w->w + 2*border, w->h + title_bar + 2*border, 0xFF888888);
    fb_fill_rect(w->x, w->y - title_bar, w->w, title_bar, 0xFF000088); // Title bar
    fb_draw_string(w->x + 5, w->y - 15, w->title, 0xFFFFFFFF);

    // Draw close button
    fb_fill_rect(w->x + w->w - 18, w->y - 18, 16, 16, 0xFFCC0000);
    fb_draw_char(w->x + w->w - 14, w->y - 18, 'X', 0xFFFFFFFF);

    // Update window content if callback exists
    if (w->draw) {
        w->draw(w);
    }

    // Draw content
    // For now, just copy buffer to framebuffer
    // Ideally we clip
    for (int j = 0; j < w->h; j++) {
        for (int i = 0; i < w->w; i++) {
            uint32_t color = w->buffer[j * w->w + i];
            fb_put_pixel(w->x + i, w->y + j, color);
        }
    }
}

void gui_draw_taskbar(void) {
    int h = fb_get_height();
    int w = fb_get_width();
    fb_fill_rect(0, h - 30, w, 30, 0xFFCCCCCC);

    // Start button
    fb_fill_rect(2, h - 28, 50, 26, 0xFF888888);
    fb_draw_string(5, h - 20, "Start", 0xFF000000);
}

void gui_run(void) {
    bool dragging = false;
    int drag_off_x = 0, drag_off_y = 0;

    while (1) {
        int mx = mouse_get_x();
        int my = mouse_get_y();
        int buttons = mouse_get_buttons();

        // Keyboard Input handling
        if (keyboard_has_char()) {
            char c = keyboard_get_char();
            if (focused_window && focused_window->on_key) {
                focused_window->on_key(focused_window, c);
            }
        }

        // Mouse Input handling
        if (buttons & 1) { // Left click
            // Check windows (front to back for click detection, back to front for drawing? No, focused is top)
            // We need Z-order. List is front-to-back?
            // "windows" is head. Let's assume head is top.

            if (!dragging) {
                window_t* curr = windows;
                bool clicked_window = false;
                while (curr) {
                    if (mx >= curr->x && mx < curr->x + curr->w &&
                        my >= curr->y - 20 && my < curr->y + curr->h) {

                        focused_window = curr;

                        // Check drag (title bar)
                        if (my < curr->y) {
                            // Close button?
                            if (mx > curr->x + curr->w - 20) {
                                gui_close_window(curr);
                                break;
                            }
                            dragging = true;
                            drag_off_x = mx - curr->x;
                            drag_off_y = my - curr->y;
                        }

                        // Bring to front (move to head)
                        if (curr != windows) {
                            // Remove
                            window_t* prev = windows;
                            while (prev->next != curr) prev = prev->next;
                            prev->next = curr->next;

                            // Insert head
                            curr->next = windows;
                            windows = curr;
                        }
                        clicked_window = true;
                        break;
                    }
                    curr = curr->next;
                }

                if (!clicked_window) {
                    // Check taskbar
                    if (my >= (int)fb_get_height() - 30) {
                        if (mx < 55) {
                            // Start menu logic (spawn apps for demo)
                            // Cycle through apps?
                            sp_terminal();
                        }
                    }
                }
            } else {
                // Dragging
                if (focused_window) {
                    focused_window->x = mx - drag_off_x;
                    focused_window->y = my - drag_off_y;
                }
            }
        } else {
            dragging = false;
        }

        // Drawing
        fb_clear(0xFF008080); // Desktop color

        // Draw windows (Back to front, so reverse list?)
        // Or just iterate list (Front to Back) but that's wrong painter.
        // We need to reverse iterate or recurse.
        // Simple recursion:
        void draw_recursive(window_t* w) {
            if (!w) return;
            draw_recursive(w->next);
            gui_draw_window(w);
        }
        draw_recursive(windows);

        gui_draw_taskbar();

        // Cursor
        fb_fill_rect(mx, my, 5, 5, 0xFFFFFFFF);
        fb_draw_rect(mx, my, 5, 5, 0xFF000000);

        fb_flip();
    }
}

// Spawners
void sp_terminal(void) {
    shell_init();
}
