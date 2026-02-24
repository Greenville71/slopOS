#include "sound.h"
#include "ports.h"
#include "pit.h"

void sound_play(uint32_t frequency) {
    if (frequency == 0) {
        sound_stop();
        return;
    }

    uint32_t divisor = 1193180 / frequency;

    // Command 0xB6: Channel 2, Access lo/hi, Square Wave (Mode 3), Binary
    outb(0x43, 0xB6);

    // Send frequency divisor
    outb(0x42, (uint8_t)(divisor & 0xFF));
    outb(0x42, (uint8_t)((divisor >> 8) & 0xFF));

    // Enable speaker: set bits 0 (gate) and 1 (data) of port 0x61
    uint8_t temp = inb(0x61);
    if (temp != (temp | 3)) {
        outb(0x61, temp | 3);
    }
}

void sound_stop(void) {
    // Disable speaker: clear bits 0 and 1 of port 0x61
    uint8_t temp = inb(0x61) & 0xFC;
    outb(0x61, temp);
}

void sound_init(void) {
    // Ensure speaker is off initially
    sound_stop();
}

void sound_beep(void) {
    sound_play(1000);
    pit_sleep_ms(100);
    sound_stop();
}
