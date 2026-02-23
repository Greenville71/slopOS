#include "isr.h"
#include "ports.h"

// Array of function pointers handling interrupts
void (*interrupt_handlers[256])(registers_t*);

void isr_register_handler(uint8_t n, void (*handler)(registers_t*)) {
    interrupt_handlers[n] = handler;
}

void isr_handler(registers_t *r) {
    if (interrupt_handlers[r->int_no] != 0) {
        void (*handler)(registers_t*) = interrupt_handlers[r->int_no];
        handler(r);
    }
}

void irq_handler(registers_t *r) {
    void (*handler)(registers_t*) = interrupt_handlers[r->int_no];
    if (handler) {
        handler(r);
    }

    // EOI
    // If IRQ >= 8 (interrupt number >= 40), send EOI to slave
    if (r->int_no >= 40) {
        outb(0xA0, 0x20);
    }
    outb(0x20, 0x20);
}

void pic_init(void) {
    // ICW1
    outb(0x20, 0x11);
    io_wait();
    outb(0xA0, 0x11);
    io_wait();

    // ICW2 (Vector offset)
    outb(0x21, 0x20); // Master mapped to 0x20 (32)
    io_wait();
    outb(0xA1, 0x28); // Slave mapped to 0x28 (40)
    io_wait();

    // ICW3
    outb(0x21, 0x04);
    io_wait();
    outb(0xA1, 0x02);
    io_wait();

    // ICW4
    outb(0x21, 0x01);
    io_wait();
    outb(0xA1, 0x01);
    io_wait();

    // Masks
    outb(0x21, 0xFB); // 1111 1011 - IRQ2 (cascade) enabled
    outb(0xA1, 0xFF);
}

void pic_send_eoi(uint8_t irq) {
    if (irq >= 8) {
        outb(0xA0, 0x20);
    }
    outb(0x20, 0x20);
}

void irq_clear_mask(uint8_t irq) {
    uint16_t port;
    uint8_t value;

    if (irq < 8) {
        port = 0x21;
    } else {
        port = 0xA1;
        irq -= 8;
    }

    value = inb(port) & ~(1 << irq);
    outb(port, value);
}

void irq_set_mask(uint8_t irq) {
    uint16_t port;
    uint8_t value;

    if (irq < 8) {
        port = 0x21;
    } else {
        port = 0xA1;
        irq -= 8;
    }

    value = inb(port) | (1 << irq);
    outb(port, value);
}
