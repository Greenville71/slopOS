#include "gui.h"
#include "framebuffer.h"
#include "mouse.h"
#include "keyboard.h"
#include "terminal.h"

void gui_init(void) {
    // Initialize GUI state
}

void gui_run(void) {
    // Main loop
    while (1) {
        // Handle input

        // Draw desktop
        fb_clear(0xFF000088); // Blue background

        // Draw apps
        // filemgr_draw();

        // Draw cursor
        int mx = mouse_get_x();
        int my = mouse_get_y();
        fb_draw_rect(mx, my, 10, 10, 0xFFFFFFFF);

        fb_flip();
    }
}
