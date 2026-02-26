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

void fs_init(void);
void fs_create(const char* name);
void fs_delete(const char* name);
void fs_read(const char* name, uint8_t* buffer);
void fs_write(const char* name, uint8_t* buffer, uint32_t size);
void fs_list_print(void); // Renamed from fs_list to avoid conflict with new fs_list
int fs_list(fs_entry_t* list, int max_count);
int fs_count(void);

#endif
