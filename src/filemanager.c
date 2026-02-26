#include "filemanager.h"
#include "fs.h"
#include "framebuffer.h"
#include "string.h"
#include "memory.h"
#include "gui.h"

// Constants
#define ICON_W 60
#define ICON_H 50
#define GRID_GAP 20
#define START_X 20
#define START_Y 40 // Below toolbar
#define TOOLBAR_H 30

// State
static int selected_index = -1;
static fs_entry_t files[FS_MAX_FILES];
static int file_count = 0;

// Helper prototypes
void filemgr_render(window_t* win);
void win_put_pixel(window_t* w, int x, int y, uint32_t color);
void win_fill_rect(window_t* w, int x, int y, int width, int height, uint32_t color);
void win_draw_char(window_t* w, int x, int y, char c, uint32_t color);
void win_draw_string(window_t* w, int x, int y, const char* str, uint32_t color);

void filemgr_refresh(void) {
    file_count = fs_list(files, FS_MAX_FILES);
    selected_index = -1;
}

// Helpers
extern uint8_t font_8x16[];

void win_put_pixel(window_t* w, int x, int y, uint32_t color) {
    if (x < 0 || y < 0 || x >= w->w || y >= w->h) return;
    w->buffer[y * w->w + x] = color;
}

void win_fill_rect(window_t* w, int x, int y, int width, int height, uint32_t color) {
    for (int j = y; j < y + height; j++) {
        for (int i = x; i < x + width; i++) {
            win_put_pixel(w, i, j, color);
        }
    }
}

void win_draw_char(window_t* w, int x, int y, char c, uint32_t color) {
    uint8_t* glyph = &font_8x16[(unsigned char)c * 16];
    for (int row = 0; row < 16; row++) {
        uint8_t bits = glyph[row];
        for (int col = 0; col < 8; col++) {
            if (bits & (1 << (7 - col))) {
                win_put_pixel(w, x + col, y + row, color);
            }
        }
    }
}

void win_draw_string(window_t* w, int x, int y, const char* str, uint32_t color) {
    while (*str) {
        win_draw_char(w, x, y, *str++, color);
        x += 8;
    }
}

void filemgr_render(window_t* win) {
    // Fill background
    win_fill_rect(win, 0, 0, win->w, win->h, 0xFFEEEEEE); // Light gray

    // Toolbar
    win_fill_rect(win, 0, 0, win->w, TOOLBAR_H, 0xFFCCCCCC);

    // Buttons (Simple text for now)
    // "Refresh"
    win_fill_rect(win, 5, 5, 70, 20, 0xFFAAAAAA);
    win_draw_string(win, 10, 7, "Refresh", 0xFF000000);

    // "Delete"
    win_fill_rect(win, 80, 5, 70, 20, 0xFFCC8888); // Red-ish
    win_draw_string(win, 85, 7, "Delete", 0xFF000000);

    // "New"
    win_fill_rect(win, 155, 5, 50, 20, 0xFF88CC88); // Green-ish
    win_draw_string(win, 160, 7, "New", 0xFF000000);

    // Grid
    int cols = (win->w - START_X) / (ICON_W + GRID_GAP);
    if (cols < 1) cols = 1;

    for (int i = 0; i < file_count; i++) {
        int col = i % cols;
        int row = i / cols;

        int x = START_X + col * (ICON_W + GRID_GAP);
        int y = START_Y + row * (ICON_H + GRID_GAP);

        // Icon (Folder color for now, maybe yellow?)
        uint32_t icon_color = 0xFFFFFFAA; // Yellow
        if (i == selected_index) {
            icon_color = 0xFF8888FF; // Blue highlight
        }

        win_fill_rect(win, x, y, ICON_W, ICON_H - 15, icon_color);

        // Text
        char* name = files[i].name;
        // Truncate if too long?
        win_draw_string(win, x, y + ICON_H - 12, name, 0xFF000000);
    }

    // Status bar
    int status_y = win->h - 20;
    win_fill_rect(win, 0, status_y, win->w, 20, 0xFFCCCCCC);
    if (selected_index != -1) {
        win_draw_string(win, 5, status_y + 2, "Selected: ", 0xFF000000);
        win_draw_string(win, 80, status_y + 2, files[selected_index].name, 0xFF000000);
    } else {
        win_draw_string(win, 5, status_y + 2, "Ready.", 0xFF000000);
    }
}

// Interface implementation

void filemgr_init(window_t* win) {
    filemgr_refresh();
    filemgr_render(win);
}

void filemgr_draw(window_t* win) {
    // Redraw to ensure content is up-to-date
    filemgr_render(win);
}

void filemgr_on_mouse(window_t* win, int x, int y, int buttons) {
    if (buttons & 1) { // Left click
        // Check Toolbar
        if (y < TOOLBAR_H) {
            if (x >= 5 && x < 75) { // Refresh
                filemgr_refresh();
                filemgr_render(win);
            } else if (x >= 80 && x < 150) { // Delete
                if (selected_index != -1) {
                    fs_delete(files[selected_index].name);
                    filemgr_refresh();
                    filemgr_render(win);
                }
            } else if (x >= 155 && x < 205) { // New
                // Create dummy file
                // Toggle between two names or append random?
                // Just create one
                static int new_cnt = 0;
                if (new_cnt == 0) fs_create("new.txt");
                else if (new_cnt == 1) fs_create("data.dat");
                else fs_create("doc.txt");
                new_cnt = (new_cnt + 1) % 3;

                filemgr_refresh();
                filemgr_render(win);
            }
            return;
        }

        // Check Grid
        int cols = (win->w - START_X) / (ICON_W + GRID_GAP);
        if (cols < 1) cols = 1;

        // Iterate files to check bounds
        int clicked_index = -1;
        for (int i = 0; i < file_count; i++) {
            int col = i % cols;
            int row = i / cols;

            int ix = START_X + col * (ICON_W + GRID_GAP);
            int iy = START_Y + row * (ICON_H + GRID_GAP);

            if (x >= ix && x < ix + ICON_W &&
                y >= iy && y < iy + ICON_H) {
                clicked_index = i;
                break;
            }
        }

        if (clicked_index != -1) {
            selected_index = clicked_index;
            // Redraw
            filemgr_render(win);
        } else {
            // Deselect?
            selected_index = -1;
            filemgr_render(win);
        }
    }
}

void filemgr_on_key(window_t* win, char c) {
    (void)win;
    (void)c;
}
