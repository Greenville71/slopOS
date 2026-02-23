#ifndef FILEMANAGER_H
#define FILEMANAGER_H

#include "types.h"

void filemanager_init(void);
void filemanager_draw(void);
void filemgr_create(const char* name);
void filemgr_draw(void);
void filemgr_on_key(char c);
void filemgr_on_mouse(int x, int y, int buttons);

#endif
