#include "fs.h"
#include "string.h"
#include "memory.h"

#define FS_MAX_FILES 128
#define FS_METADATA_ADDR 0x80020
#define FS_DATA_START 0x100000 // 1MB, or wherever kernel isn't
// Actually, let's use a static array for safety in this reconstruction
// unless we strictly want to follow the 0x80020 convention.
// For now, I'll use a static array to avoid corrupting low memory if the kernel is there.
// But wait, the kernel is at 1MB. 0x80020 is free.

typedef struct {
    char name[60];
    uint32_t address;
    uint32_t size;
    uint8_t type;
    uint8_t exists;
    uint8_t padding[2];
} __attribute__((packed)) fs_entry_t;

fs_entry_t* fs_table = (fs_entry_t*)FS_METADATA_ADDR;

void fs_init(void) {
    // Clear FS table
    memset(fs_table, 0, sizeof(fs_entry_t) * FS_MAX_FILES);
    // Create some default files?
    fs_create("readme.txt");
    fs_write("readme.txt", (uint8_t*)"Hello World!", 12);
}

int fs_find(const char* name) {
    for (int i = 0; i < FS_MAX_FILES; i++) {
        if (fs_table[i].exists && strcmp(fs_table[i].name, name) == 0) {
            return i;
        }
    }
    return -1;
}

void fs_create(const char* name) {
    if (fs_find(name) != -1) return;

    for (int i = 0; i < FS_MAX_FILES; i++) {
        if (!fs_table[i].exists) {
            strcpy(fs_table[i].name, name);
            fs_table[i].exists = 1;
            fs_table[i].size = 0;
            // Allocate memory for file
            fs_table[i].address = (uint32_t)kmalloc(1024); // Fixed size for now?
            return;
        }
    }
}

void fs_delete(const char* name) {
    int i = fs_find(name);
    if (i != -1) {
        fs_table[i].exists = 0;
        // Free memory?
    }
}

void fs_read(const char* name, uint8_t* buffer) {
    int i = fs_find(name);
    if (i != -1) {
        memcpy(buffer, (void*)fs_table[i].address, fs_table[i].size);
    }
}

void fs_write(const char* name, uint8_t* buffer, uint32_t size) {
    int i = fs_find(name);
    if (i != -1) {
        // Reallocate if needed?
        // For now assume it fits or we just update size
        memcpy((void*)fs_table[i].address, buffer, size);
        fs_table[i].size = size;
    }
}

void fs_list(void) {
    // Print to terminal?
}
