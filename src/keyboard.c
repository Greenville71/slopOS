#include "keyboard.h"
#include "ports.h"
#include "isr.h"

// Scancode Table for US QWERTY
static uint8_t sc_normal[128] = {
    0, 27, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '=', '\b',
    '\t', 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '[', ']', '\n',
    0, 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';', '\'', '`',
    0, '\\', 'z', 'x', 'c', 'v', 'b', 'n', 'm', ',', '.', '/', 0,
    '*', 0, ' ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

static uint8_t sc_shift[128] = {
    0, 27, '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '+', '\b',
    '\t', 'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', '{', '}', '\n',
    0, 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', ':', '"', '~',
    0, '|', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', '<', '>', '?', 0,
    '*', 0, ' ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

static char kb_buf[256];
static uint8_t kb_head = 0;
static uint8_t kb_tail = 0;
static bool shift_held = false;
static bool caps_on = false;
static bool e0_prefix = false;

static void kb_handler(registers_t *r) {
    (void)r;
    uint8_t scancode = inb(0x60);

    if (scancode == 0xE0) {
        e0_prefix = true;
        return;
    }

    if (scancode & 0x80) {
        // Key release
        scancode &= 0x7F;
        if (scancode == 0x2A || scancode == 0x36) {
            shift_held = false;
        }
    } else {
        // Key press
        if (scancode == 0x2A || scancode == 0x36) {
            shift_held = true;
        } else if (scancode == 0x3A) {
            caps_on = !caps_on;
        } else {
            char c = 0;
            if (shift_held) {
                c = sc_shift[scancode];
            } else {
                c = sc_normal[scancode];
            }

            if (caps_on) {
                if (c >= 'a' && c <= 'z') c -= 32;
                else if (c >= 'A' && c <= 'Z') c += 32;
            }

            if (c) {
                kb_buf[kb_tail++] = c;
            }
        }
    }
    e0_prefix = false;
}

void keyboard_init(void) {
    isr_register_handler(33, kb_handler);
    irq_clear_mask(1);
}

bool keyboard_has_char(void) {
    return kb_head != kb_tail;
}

char keyboard_get_char(void) {
    if (kb_head == kb_tail) return 0;
    return kb_buf[kb_head++];
}
