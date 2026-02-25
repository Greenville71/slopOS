#ifndef SOUND_H
#define SOUND_H

#include "types.h"

// Initialize any sound subsystems if necessary (currently none)
void sound_init(void);

// Play a tone at the specified frequency (Hz)
void sound_play(uint32_t frequency);

// Stop the current tone
void sound_stop(void);

// Play a short beep
void sound_beep(void);

#endif
