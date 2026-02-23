#ifndef FS_H
#define FS_H

#include "types.h"

void fs_init(void);
void fs_create(const char* name);
void fs_delete(const char* name);
void fs_read(const char* name, uint8_t* buffer);
void fs_write(const char* name, uint8_t* buffer, uint32_t size);
void fs_list(void);

#endif
