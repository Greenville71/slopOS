#include "fs.h"
#include "ata.h"
#include "string.h"
#include "memory.h"

void fs_init(void) {
    ata_init();
}

void fs_create(const char* name) {
    (void)name;
}

void fs_delete(const char* name) {
    (void)name;
}

void fs_read(const char* name, uint8_t* buffer) {
    (void)name;
    (void)buffer;
}

void fs_write(const char* name, uint8_t* buffer, uint32_t size) {
    (void)name;
    (void)buffer;
    (void)size;
}

void fs_list(void) {

}
