#include "login.h"
#include "framebuffer.h"
#include "keyboard.h"

char current_user[32] = "guest";

void login_screen(void) {
    fb_clear(0xFF000000);
    fb_draw_string(100, 100, "Please login...", 0xFFFFFFFF);
    fb_flip();
}
