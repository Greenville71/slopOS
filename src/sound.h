#ifndef SOUND_H
#define SOUND_H

#include "types.h"

void sound_init(void);
void sound_play(uint32_t frequency);
void sound_stop(void);
void sound_beep(void);

#endif
