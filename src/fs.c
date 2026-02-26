#include "fs.h"
#include "string.h"
#include "memory.h"

#define FS_METADATA_ADDR 0x80020
// #define FS_DATA_START 0x100000

fs_entry_t* fs_table = (fs_entry_t*)FS_METADATA_ADDR;

void fs_init(void) {
    // Clear FS table
    memset(fs_table, 0, sizeof(fs_entry_t) * FS_MAX_FILES);

    // Create default files
    fs_create("readme.txt");
    fs_write("readme.txt", (uint8_t*)"Welcome to SlopOS! This is a simple text file.", 46);

    fs_create("todo.txt");
    fs_write("todo.txt", (uint8_t*)"1. Build File Explorer\n2. Build Text Editor\n3. Ship it!", 56);

    fs_create("sys.log");
    fs_write("sys.log", (uint8_t*)"System initialized successfully.", 32);

    fs_create("notes.txt");
    fs_write("notes.txt", (uint8_t*)"Meeting at 5PM.", 15);
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
            fs_table[i].address = (uint32_t)kmalloc(1024); // Fixed size for now
            return;
        }
    }
}

void fs_delete(const char* name) {
    int i = fs_find(name);
    if (i != -1) {
        fs_table[i].exists = 0;
        // Ideally free memory here, but kmalloc is simple
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
        // For now assume it fits (1024) or we just update size
        if (size > 1024) size = 1024; // Limit
        memcpy((void*)fs_table[i].address, buffer, size);
        fs_table[i].size = size;
    }
}

void fs_list_print(void) {
    // Placeholder
}

int fs_list(fs_entry_t* list, int max_count) {
    int count = 0;
    for (int i = 0; i < FS_MAX_FILES && count < max_count; i++) {
        if (fs_table[i].exists) {
            memcpy(&list[count], &fs_table[i], sizeof(fs_entry_t));
            count++;
        }
    }
    return count;
}

int fs_count(void) {
    int count = 0;
    for (int i = 0; i < FS_MAX_FILES; i++) {
        if (fs_table[i].exists) {
            count++;
        }
    }
    return count;
}
