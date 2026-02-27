#include "memory.h"
#include "string.h"

static uint32_t heap_base;
static uint32_t heap_current;
static uint32_t heap_end;

void heap_init(uint32_t start, uint32_t size) {
    heap_base = start;
    heap_current = start;
    heap_end = start + size;
}

void* kmalloc(size_t size) {
    // 16-byte alignment
    if (heap_current & 0xF) {
        heap_current &= 0xFFFFFFF0;
        heap_current += 0x10;
    }

    if (heap_current + size > heap_end) {
        return NULL;
    }
    void* ptr = (void*)heap_current;
    heap_current += size;
    return ptr;
}

uint32_t memory_get_used(void) {
    return heap_current - heap_base;
}

uint32_t memory_get_total(void) {
    return heap_end - heap_base;
}
