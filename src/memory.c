#include "memory.h"
#include "string.h"

static uint32_t heap_current;
static uint32_t heap_end;

void heap_init(uint32_t start, uint32_t size) {
    heap_current = start;
    heap_end = start + size;
}

void* kmalloc(size_t size) {
    if (heap_current + size > heap_end) {
        return NULL;
    }
    void* ptr = (void*)heap_current;
    heap_current += size;
    return ptr;
}
