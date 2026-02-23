#ifndef MOUSE_H
#define MOUSE_H

#include "types.h"

void mouse_init(void);
void mouse_set_bounds(uint32_t width, uint32_t height);
int32_t mouse_get_x(void);
int32_t mouse_get_y(void);
uint8_t mouse_get_buttons(void);

#endif
