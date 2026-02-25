#include "sound.h"
#include "ports.h"
#include "pit.h"

// Speaker ports
#define PIT_CMD 0x43
#define PIT_CH2 0x42
#define SPK_CTL 0x61

void sound_init(void) {
    // Nothing specific needed here
}

void sound_play(uint32_t frequency) {
    if (frequency == 0) {
        sound_stop();
        return;
    }

    uint32_t divisor = 1193180 / frequency;

    // Set PIT Channel 2
    outb(PIT_CMD, 0xB6);
    outb(PIT_CH2, (uint8_t)(divisor & 0xFF));
    outb(PIT_CH2, (uint8_t)((divisor >> 8) & 0xFF));

    // Enable speaker (bits 0 and 1)
    uint8_t tmp = inb(SPK_CTL);
    if (tmp != (tmp | 3)) {
        outb(SPK_CTL, tmp | 3);
    }
}

void sound_stop(void) {
    uint8_t tmp = inb(SPK_CTL) & 0xFC;
    outb(SPK_CTL, tmp);
}

void sound_beep(void) {
    sound_play(1000);
    pit_sleep_ms(100);
    sound_stop();
}
