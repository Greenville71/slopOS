#ifndef MEMORY_H
#define MEMORY_H

#include "types.h"

void heap_init(uint32_t start, uint32_t size);
void* kmalloc(size_t size);

uint32_t memory_get_used(void);
uint32_t memory_get_total(void);

#endif
