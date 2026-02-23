#include "filemanager.h"
#include "fs.h"
#include "framebuffer.h"
#include "string.h"

void filemanager_init(void) {

}

void filemanager_draw(void) {
    // Background
    fb_fill_rect(0, 0, fb_get_width(), fb_get_height(), 0xFFCCCCCC);
}

void filemgr_create(const char* name) {
    fs_create(name);
}

void filemgr_draw(void) {
    filemanager_draw();
}

void filemgr_on_key(char c) {
    (void)c;
}

void filemgr_on_mouse(int x, int y, int buttons) {
    (void)x;
    (void)y;
    (void)buttons;
}
