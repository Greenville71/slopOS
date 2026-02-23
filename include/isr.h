#ifndef ISR_H
#define ISR_H

#include "types.h"

struct registers {
    uint32_t ds;
    uint32_t edi, esi, ebp, esp, ebx, edx, ecx, eax;
    uint32_t int_no, err_code;
    uint32_t eip, cs, eflags, useresp, ss;
};
typedef struct registers registers_t;

void isr_handler(registers_t *r);
void irq_handler(registers_t *r);

void pic_init(void);
void pic_send_eoi(uint8_t irq);
void irq_clear_mask(uint8_t irq);
void irq_set_mask(uint8_t irq);

void isr_register_handler(uint8_t n, void (*handler)(registers_t*));

#endif
