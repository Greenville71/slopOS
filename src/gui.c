#include "gui.h"
#include "framebuffer.h"
#include "mouse.h"
#include "keyboard.h"
#include "memory.h"
#include "string.h"
#include "terminal.h"
#include "pit.h"

// Strings from gui.o.strings
const char* STR_SLOPOS = "SlopOS v0.3";
const char* STR_DESC1 = "From-scratch OS with GUI";
const char* STR_DESC2 = "filesystem, user login,";
const char* STR_DESC3 = "physics, games, and";
const char* STR_DESC4 = "Material Design.";
const char* STR_DESC5 = "C + x86 asm. No libc.";
const char* STR_ABOUT_TITLE = "About SlopOS";
const char* STR_TERMINAL = "Terminal";
const char* STR_CALC = "Calculator";
const char* STR_NOTEPAD = "Notepad";
const char* STR_FILES = "Files";
const char* STR_SETTINGS = "Settings";
const char* STR_PHYSICS = "Physics Lab";
const char* STR_GAME = "Breakout";
const char* STR_SHUTDOWN = "Shutting down...";
const char* STR_POWEROFF = "Safe to power off.";
const char* STR_APPS = "Applications";
const char* STR_MENU_SHUTDOWN = "Shutdown";
const char* STR_MENU_PHYSICS = "Physics";
const char* STR_MENU_ABOUT = "About";

// Global State (matching gui.o offsets)
// 0xc00: mouse_state/global?
// 0xc04: screen_width (accessed as 0x4 sometimes?)
// 0xc08: menu_hover (bool)
// 0xc09: menu_open (bool)
// 0xc0c: win_count
// 0xc20: windows array start

static int win_count = 0;
static window_t windows[32]; // Fixed size array, stride 108
static int menu_open = 0;
static int menu_hover = 0;

// Callbacks (placeholders)
void terminal_draw(window_t* w);
void terminal_on_key(window_t* w, char c);
void calc_draw(window_t* w);
void calc_on_key(window_t* w, char c);
void calc_on_mouse(window_t* w, int x, int y, int b);
void notepad_draw(window_t* w);
void notepad_on_key(window_t* w, char c);
void filemgr_draw(window_t* w);
void filemgr_on_key(window_t* w, char c);
void filemgr_on_mouse(window_t* w, int x, int y, int b);
void settings_draw(window_t* w);
void settings_on_mouse(window_t* w, int x, int y, int b);
void physics_draw(window_t* w);
void physics_on_key(window_t* w, char c);
void game_draw(window_t* w);
void game_on_key(window_t* w, char c);

// Forward declarations
void focus_window(int idx);
void gui_draw_window(window_t* w, int active);
void gui_draw_taskbar(void);
void gui_draw_menu(void);

void gui_init(void) {
    win_count = 0;
    menu_open = 0;
    menu_hover = 0;
    memset(windows, 0, sizeof(windows));
}

window_t* gui_create_window(const char* title, int x, int y, int w, int h) {
    if (win_count >= 32) return NULL;

    int idx = win_count;
    window_t* win = &windows[idx];

    // 0xc20 offset logic
    // Struct layout derived from assembly
    // 0x00: ptr to title? or ID? Assembly copies Arg1 here.
    // 0x04: x
    // 0x08: y
    // 0x0c: w
    // 0x10: h (filled later? assembly writes 0x101 to offset 0x50?)
    // 0x14: buffer ptr (malloc'd?)
    // 0x18: ?
    // 0x1c: ?
    // 0x20: title buffer (64 chars?)

    // Based on sp_terminal: Arg1=Title, Arg2=X, Arg3=Y, Arg4=W, Arg5=H
    win->x = x;
    win->y = y;
    win->w = w;
    win->h = h;
    strncpy(win->title, title, 63);

    // Allocate buffer
    win->buffer = (uint32_t*)kmalloc(w * h * 4);
    memset(win->buffer, 0xFF, w * h * 4); // White

    win->flags = 1; // Visible?

    win_count++;
    return win;
}

void focus_window(int idx) {
    if (idx < 0 || idx >= win_count) return;
    if (idx == win_count - 1) return; // Already on top

    // Swap windows[idx] with windows[win_count-1] ?
    // Assembly: copies [idx] to stack, shifts others down, puts [idx] at top.
    // Basically move to end of array.

    window_t temp = windows[idx];
    for (int i = idx; i < win_count - 1; i++) {
        windows[i] = windows[i+1];
    }
    windows[win_count - 1] = temp;
}

void gui_close_window(int idx) {
    if (idx < 0 || idx >= win_count) return;

    // Free buffer? (No free in this allocator)

    // Shift remaining
    for (int i = idx; i < win_count - 1; i++) {
        windows[i] = windows[i+1];
    }
    win_count--;
}

// App Spawners
void sp_terminal(void) {
    window_t* w = gui_create_window(STR_TERMINAL, 120, 40, 660, 440);
    if (w) {
        w->draw = terminal_draw;
        w->on_key = terminal_on_key;
    }
}

void sp_calc(void) {
    window_t* w = gui_create_window(STR_CALC, 250, 80, 280, 350);
    if (w) {
        w->draw = calc_draw;
        w->on_key = calc_on_key;
        w->on_mouse = calc_on_mouse;
    }
}

void sp_notepad(void) {
    window_t* w = gui_create_window(STR_NOTEPAD, 160, 60, 560, 400);
    if (w) {
        w->draw = notepad_draw;
        w->on_key = notepad_on_key;
    }
}

void sp_files(void) {
    window_t* w = gui_create_window(STR_FILES, 100, 60, 620, 440);
    if (w) {
        w->draw = filemgr_draw;
        w->on_key = filemgr_on_key;
        w->on_mouse = filemgr_on_mouse;
    }
}

void sp_settings(void) {
    window_t* w = gui_create_window(STR_SETTINGS, 170, 80, 440, 420);
    if (w) {
        w->draw = settings_draw;
        w->on_mouse = settings_on_mouse;
    }
}

void sp_physics(void) {
    window_t* w = gui_create_window(STR_PHYSICS, 140, 40, 540, 420);
    if (w) {
        w->draw = physics_draw;
        w->on_key = physics_on_key;
    }
}

void sp_game(void) {
    window_t* w = gui_create_window(STR_GAME, 200, 30, 420, 420);
    if (w) {
        w->draw = game_draw;
        w->on_key = game_on_key;
    }
}

void sp_about(void) {
    // About dialog
    window_t* w = gui_create_window(STR_ABOUT_TITLE, 200, 100, 320, 240);
    // ...
}

void gui_draw_window(window_t* w, int active) {
    // Frame
    uint32_t border = active ? 0xFF0000AA : 0xFF888888;
    uint32_t title_bg = active ? 0xFF000088 : 0xFF666666;

    fb_fill_rect(w->x - 2, w->y - 22, w->w + 4, w->h + 24, border);
    fb_fill_rect(w->x, w->y - 20, w->w, 20, title_bg);
    fb_draw_string(w->x + 5, w->y - 16, w->title, 0xFFFFFFFF);

    // Close button (red)
    fb_fill_rect(w->x + w->w - 18, w->y - 18, 16, 16, 0xFFCC0000);
    fb_draw_char(w->x + w->w - 14, w->y - 18, 'X', 0xFFFFFFFF);

    // Content
    if (w->draw) w->draw(w);
    else {
        // Blit buffer
        for (int j=0; j<w->h; j++) {
            for (int i=0; i<w->w; i++) {
                uint32_t c = w->buffer[j*w->w + i];
                fb_put_pixel(w->x + i, w->y + j, c);
            }
        }
    }
}

void gui_draw_taskbar(void) {
    int h = fb_get_height();
    int w = fb_get_width();

    fb_fill_rect(0, h - 30, w, 30, 0xFFCCCCCC);

    // Start button
    uint32_t start_col = menu_open ? 0xFF8888AA : 0xFF888888;
    fb_fill_rect(2, h - 28, 60, 26, start_col);
    fb_draw_string(10, h - 20, "Start", 0xFF000000);

    // Time
    char time_str[16];
    itoa(rtc_hours(), time_str, 10);
    strcat(time_str, ":");
    char min[4];
    itoa(rtc_minutes(), min, 10);
    if (strlen(min) < 2) strcat(time_str, "0");
    strcat(time_str, min);

    fb_draw_string(w - 50, h - 20, time_str, 0xFF000000);
}

void gui_draw_menu(void) {
    int h = fb_get_height();
    fb_fill_rect(0, h - 30 - 200, 150, 200, 0xFFDDDDDD);
    fb_draw_rect(0, h - 30 - 200, 150, 200, 0xFF888888);

    int y = h - 30 - 190;
    fb_draw_string(10, y, STR_APPS, 0xFF000000); y += 20;
    fb_draw_string(20, y, STR_TERMINAL, 0xFF000000); y += 20;
    fb_draw_string(20, y, STR_CALC, 0xFF000000); y += 20;
    fb_draw_string(20, y, STR_NOTEPAD, 0xFF000000); y += 20;
    fb_draw_string(20, y, STR_GAME, 0xFF000000); y += 20;
    fb_draw_string(10, y, STR_MENU_ABOUT, 0xFF000000); y += 20;
    fb_draw_string(10, y, STR_MENU_SHUTDOWN, 0xFF000000); y += 20;
}

void gui_run(void) {
    int prev_left = 0;
    int dragging = -1;
    int drag_off_x = 0;
    int drag_off_y = 0;

    while (1) {
        int mx = mouse_get_x();
        int my = mouse_get_y();
        int left = mouse_get_buttons() & 1;

        if (left && !prev_left) {
            // Click
            int handled = 0;

            // Check Start Button
            if (my >= (int)fb_get_height() - 30 && mx < 65) {
                menu_open = !menu_open;
                handled = 1;
            }

            // Check Menu
            if (menu_open && !handled && mx < 150 && my > (int)fb_get_height() - 230) {
                // Simple hit test for menu items
                int item_y = my - ((int)fb_get_height() - 30 - 190);
                if (item_y > 20 && item_y < 40) sp_terminal();
                else if (item_y > 40 && item_y < 60) sp_calc();
                else if (item_y > 60 && item_y < 80) sp_notepad();
                else if (item_y > 80 && item_y < 100) sp_game();
                else if (item_y > 100 && item_y < 120) sp_about();
                else if (item_y > 120 && item_y < 140) { fb_clear(0); while(1); } // Shutdown

                menu_open = 0;
                handled = 1;
            }

            if (!handled && menu_open) menu_open = 0;

            // Check Windows (Top to bottom)
            if (!handled) {
                for (int i = win_count - 1; i >= 0; i--) {
                    window_t* w = &windows[i];
                    if (mx >= w->x && mx < w->x + w->w &&
                        my >= w->y - 22 && my < w->y + w->h) {

                        focus_window(i); // Move to top

                        // Check Close
                        if (my < w->y && mx > w->x + w->w - 20) {
                            gui_close_window(win_count - 1);
                        } else if (my < w->y) {
                            // Title bar drag
                            dragging = win_count - 1;
                            drag_off_x = mx - w->x;
                            drag_off_y = my - w->y;
                        } else {
                            // Client area click
                            if (w->on_mouse) w->on_mouse(w, mx - w->x, my - w->y, 1);
                        }
                        handled = 1;
                        break;
                    }
                }
            }
        }

        if (left && dragging != -1) {
            window_t* w = &windows[dragging];
            w->x = mx - drag_off_x;
            w->y = my - drag_off_y;
        } else {
            dragging = -1;
        }

        prev_left = left;

        // Draw
        fb_clear(0xFF008080); // Teal desktop

        // Windows (Bottom to top)
        for (int i = 0; i < win_count; i++) {
            gui_draw_window(&windows[i], i == win_count - 1);
        }

        gui_draw_taskbar();
        if (menu_open) gui_draw_menu();

        // Cursor
        fb_fill_rect(mx, my, 10, 10, 0xFFFFFFFF);
        fb_draw_rect(mx, my, 10, 10, 0xFF000000);

        fb_flip();
        //pit_sleep_ms(16);
    }
}
