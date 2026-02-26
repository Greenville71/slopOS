#ifndef FILEMANAGER_H
#define FILEMANAGER_H

#include "types.h"
#include "gui.h"

void filemgr_init(window_t* win);
void filemgr_draw(window_t* win);
void filemgr_on_key(window_t* win, char c);
void filemgr_on_mouse(window_t* win, int x, int y, int buttons);

#endif
