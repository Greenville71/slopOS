#ifndef PIT_H
#define PIT_H

#include "types.h"

void pit_init(uint32_t frequency);
uint32_t pit_get_ticks(void);
void pit_sleep_ms(uint32_t ms);

#endif
