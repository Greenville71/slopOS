#include "mouse.h"
#include "ports.h"
#include "isr.h"

static uint8_t mouse_cycle = 0;
static int8_t mouse_byte[3];
static int32_t mouse_x = 0;
static int32_t mouse_y = 0;
static int32_t max_x = 1024;
static int32_t max_y = 768;
static uint8_t mouse_buttons = 0;

static void mouse_wait(uint8_t type) {
    uint32_t time_out = 100000;
    if (type == 0) {
        while (time_out--) {
            if ((inb(0x64) & 1) == 1) return;
        }
    } else {
        while (time_out--) {
            if ((inb(0x64) & 2) == 0) return;
        }
    }
}

static void mouse_write(uint8_t write) {
    mouse_wait(1);
    outb(0x64, 0xD4);
    mouse_wait(1);
    outb(0x60, write);
}

static uint8_t mouse_read(void) {
    mouse_wait(0);
    return inb(0x60);
}

static void mouse_handler(registers_t *r) {
    (void)r;
    uint8_t status = inb(0x64);
    if (!(status & 0x20)) {
        return;
    }

    mouse_byte[mouse_cycle++] = inb(0x60);

    if (mouse_cycle == 3) {
        mouse_cycle = 0;

        uint8_t flags = mouse_byte[0];
        if ((flags & 0x08) == 0) return; // Bit 3 should be 1

        mouse_buttons = flags & 0x07;

        int32_t x = mouse_byte[1];
        int32_t y = mouse_byte[2];

        if (flags & 0x10) x |= 0xFFFFFF00;
        if (flags & 0x20) y |= 0xFFFFFF00;

        mouse_x += x;
        mouse_y -= y;

        if (mouse_x < 0) mouse_x = 0;
        if (mouse_y < 0) mouse_y = 0;
        if (mouse_x >= max_x) mouse_x = max_x - 1;
        if (mouse_y >= max_y) mouse_y = max_y - 1;
    }
}

void mouse_init(void) {
    uint8_t _status;

    mouse_wait(1);
    outb(0x64, 0xA8);

    mouse_wait(1);
    outb(0x64, 0x20);
    mouse_wait(0);
    _status = (inb(0x60) | 2);
    mouse_wait(1);
    outb(0x64, 0x60);
    mouse_wait(1);
    outb(0x60, _status);

    mouse_write(0xF6);
    mouse_read();

    mouse_write(0xF4);
    mouse_read();

    isr_register_handler(44, mouse_handler);
    irq_clear_mask(12);
}

void mouse_set_bounds(uint32_t width, uint32_t height) {
    max_x = width;
    max_y = height;
}

int32_t mouse_get_x(void) {
    return mouse_x;
}

int32_t mouse_get_y(void) {
    return mouse_y;
}

uint8_t mouse_get_buttons(void) {
    return mouse_buttons;
}
