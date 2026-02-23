#ifndef TERMINAL_H
#define TERMINAL_H

#include "types.h"

void terminal_init(void);
void terminal_write(const char* data, size_t size);
void terminal_writestring(const char* data);
void terminal_putchar(char c);
void terminal_clear(void);

#endif
