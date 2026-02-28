#ifndef FS_H
#define FS_H

#include "types.h"

#define FS_MAX_FILES 128

typedef struct {
    char name[60];
    uint32_t address;
    uint32_t size;
    uint8_t type;
    uint8_t exists;
    uint8_t padding[2];
} __attribute__((packed)) fs_entry_t;

fs_entry_t* fs_get_table(void);

void fs_init(void);
void fs_create(const char* name);
void fs_delete(const char* name);
void fs_read(const char* name, uint8_t* buffer);
void fs_write(const char* name, uint8_t* buffer, uint32_t size);
void fs_list(void);

#endif
