#include "pit.h"
#include "ports.h"
#include "isr.h"

static volatile uint32_t ticks = 0;
static uint32_t pit_freq = 0;

static void pit_handler(registers_t *r) {
    (void)r;
    ticks++;
}

void pit_init(uint32_t frequency) {
    pit_freq = frequency;
    uint32_t divisor = 1193180 / frequency;

    // Command byte: Channel 0, Access lo/hi, Mode 3 (Square Wave), Binary
    outb(0x43, 0x36);

    // Low byte
    outb(0x40, (uint8_t)(divisor & 0xFF));
    // High byte
    outb(0x40, (uint8_t)((divisor >> 8) & 0xFF));

    // Register ISR 32 (IRQ 0)
    isr_register_handler(32, pit_handler);

    // Enable IRQ 0
    irq_clear_mask(0);
}

uint32_t pit_get_ticks(void) {
    return ticks;
}

void pit_sleep_ms(uint32_t ms) {
    if (pit_freq == 0) return;

    uint32_t ticks_to_wait = ms * pit_freq / 1000;
    uint32_t start_ticks = ticks;

    while (ticks < start_ticks + ticks_to_wait) {
        asm volatile("hlt");
    }
}
