#include "filemanager.h"
#include "fs.h"
#include "framebuffer.h"
#include "string.h"
#include "gui.h"

extern uint8_t font_8x16[];

static void fm_draw_char(window_t* win, int x, int y, char c, uint32_t color) {
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

static void fm_draw_string(window_t* win, int x, int y, const char* str, uint32_t color) {
    int cx = x;
    while (*str) {
        fm_draw_char(win, cx, y, *str, color);
        cx += 8;
        str++;
    }
}

static void fm_draw_rect(window_t* win, int x, int y, int w, int h, uint32_t color) {
    if (!win->buffer) return;
    for (int i = 0; i < w; i++) {
        for (int j = 0; j < h; j++) {
            int px = x + i;
            int py = y + j;
            if (px >= 0 && px < win->w && py >= 0 && py < win->h) {
                win->buffer[py * win->w + px] = color;
            }
        }
    }
}

static void fm_draw_box_outline(window_t* win, int x, int y, int w, int h, uint32_t color) {
    if (!win->buffer) return;
    for (int i = 0; i < w; i++) {
        int px = x + i;
        if (px >= 0 && px < win->w) {
            if (y >= 0 && y < win->h) win->buffer[y * win->w + px] = color;
            if (y + h - 1 >= 0 && y + h - 1 < win->h) win->buffer[(y + h - 1) * win->w + px] = color;
        }
    }
    for (int j = 0; j < h; j++) {
        int py = y + j;
        if (py >= 0 && py < win->h) {
            if (x >= 0 && x < win->w) win->buffer[py * win->w + x] = color;
            if (x + w - 1 >= 0 && x + w - 1 < win->w) win->buffer[py * win->w + x + w - 1] = color;
        }
    }
}

// Global state for simple filemanager
static int selected_index = -1;

void fm_draw(window_t* win) {
    // Fill white background
    fm_draw_rect(win, 0, 0, win->w, win->h, 0xFFFFFFFF);

    fs_entry_t* table = fs_get_table();
    int margin = 10;
    int y = margin;

    fm_draw_string(win, margin, y, "File Explorer", 0xFF000000);
    y += 20;
    fm_draw_rect(win, margin, y, win->w - margin * 2, 2, 0xFF000000);
    y += 10;

    int item_height = 20;

    for (int i = 0; i < FS_MAX_FILES; i++) {
        if (table[i].exists) {
            if (i == selected_index) {
                fm_draw_rect(win, margin, y, win->w - margin * 2, item_height, 0xFF0000AA); // Blue selection
                fm_draw_string(win, margin + 5, y + 2, table[i].name, 0xFFFFFFFF);
            } else {
                fm_draw_string(win, margin + 5, y + 2, table[i].name, 0xFF000000);
            }
            y += item_height;
        }
    }

    // Draw Delete button
    int btn_w = 60;
    int btn_h = 24;
    int btn_x = win->w - btn_w - margin;
    int btn_y = win->h - btn_h - margin;

    fm_draw_rect(win, btn_x, btn_y, btn_w, btn_h, 0xFFDDDDDD);
    fm_draw_box_outline(win, btn_x, btn_y, btn_w, btn_h, 0xFF000000);
    fm_draw_string(win, btn_x + 6, btn_y + 4, "Delete", 0xFF000000);
}

void fm_on_mouse(window_t* win, int32_t mx, int32_t my, int buttons) {
    if (buttons & 1) { // Left click
        // Adjust for title bar and inner relative coords
        int rx = mx - win->x;
        int ry = my - win->y;

        int margin = 10;
        int y_start = margin + 20 + 10;
        int item_height = 20;

        fs_entry_t* table = fs_get_table();

        // Check file list clicks
        if (rx >= margin && rx < win->w - margin && ry >= y_start) {
            int click_index = (ry - y_start) / item_height;
            int current_file_count = 0;

            for (int i = 0; i < FS_MAX_FILES; i++) {
                if (table[i].exists) {
                    if (current_file_count == click_index) {
                        selected_index = i;
                        return; // Found selection
                    }
                    current_file_count++;
                }
            }
        }

        // Check Delete button click
        int btn_w = 60;
        int btn_h = 24;
        int btn_x = win->w - btn_w - margin;
        int btn_y = win->h - btn_h - margin;

        if (rx >= btn_x && rx < btn_x + btn_w && ry >= btn_y && ry < btn_y + btn_h) {
            if (selected_index != -1 && table[selected_index].exists) {
                fs_delete(table[selected_index].name);
                selected_index = -1; // Clear selection after deletion
            }
        }
    }
}

void fm_on_key(window_t* win, char c) {
    (void)win;
    (void)c;
}

void sp_files(void) {
    window_t* win = gui_create_window("File Explorer", 100, 100, 400, 300);
    win->draw = fm_draw;
    win->on_mouse = fm_on_mouse;
    win->on_key = fm_on_key;
}
