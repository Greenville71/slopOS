#ifndef PCNET_H
#define PCNET_H

#include "types.h"

void pcnet_init(void);
void pcnet_send(uint8_t* data, uint32_t len);

#endif
