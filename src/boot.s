.set ALIGN,    1<<0             /* align loaded modules on page boundaries */
.set MEMINFO,  1<<1             /* provide memory map */
.set VIDEO,    1<<2             /* set video mode */
.set FLAGS,    ALIGN | MEMINFO | VIDEO
.set MAGIC,    0x1BADB002       /* 'magic' number */
.set CHECKSUM, -(MAGIC + FLAGS) /* checksum */

.section .multiboot
.align 4
.long MAGIC
.long FLAGS
.long CHECKSUM
.long 0, 0, 0, 0, 0 /* header_addr, load_addr, load_end_addr, bss_end_addr, entry_addr */
.long 0 /* mode_type: 0 for linear graphics */
.long 1024 /* width */
.long 768  /* height */
.long 32   /* depth */

.section .text
.global _start
.type _start, @function
_start:
	mov $0x10000, %esp
	push %ebx
	push %eax
	call kernel_main
	cli
1:	hlt
	jmp 1b

.global gdt_flush
.type gdt_flush, @function
gdt_flush:
	mov 4(%esp), %eax
	lgdt (%eax)
	mov $0x10, %ax
	mov %ax, %ds
	mov %ax, %es
	mov %ax, %fs
	mov %ax, %gs
	mov %ax, %ss
	ljmp $0x08, $.flush
.flush:
	ret

.global idt_flush
.type idt_flush, @function
idt_flush:
	mov 4(%esp), %eax
	lidt (%eax)
	ret

/* Macros for ISRs */
.macro ISR_NOERRCODE num
.global isr\num
.type isr\num, @function
isr\num:
	push $0
	push $\num
	jmp isr_common_stub
.endm

.macro ISR_ERRCODE num
.global isr\num
.type isr\num, @function
isr\num:
	push $\num
	jmp isr_common_stub
.endm

/* ISRs */
ISR_NOERRCODE 0
ISR_NOERRCODE 1
ISR_NOERRCODE 2
ISR_NOERRCODE 3
ISR_NOERRCODE 4
ISR_NOERRCODE 5
ISR_NOERRCODE 6
ISR_NOERRCODE 7
ISR_ERRCODE   8
ISR_NOERRCODE 9
ISR_ERRCODE   10
ISR_ERRCODE   11
ISR_ERRCODE   12
ISR_ERRCODE   13
ISR_ERRCODE   14
ISR_NOERRCODE 15
ISR_NOERRCODE 16
ISR_ERRCODE   17
ISR_NOERRCODE 18
ISR_NOERRCODE 19
ISR_NOERRCODE 20
ISR_NOERRCODE 21
ISR_NOERRCODE 22
ISR_NOERRCODE 23
ISR_NOERRCODE 24
ISR_NOERRCODE 25
ISR_NOERRCODE 26
ISR_NOERRCODE 27
ISR_NOERRCODE 28
ISR_NOERRCODE 29
ISR_ERRCODE   30
ISR_NOERRCODE 31

/* IRQs */
.macro IRQ num, idt_num
.global irq\num
.type irq\num, @function
irq\num:
	push $0
	push $\idt_num
	jmp irq_common_stub
.endm

IRQ 0, 32
IRQ 1, 33
IRQ 2, 34
IRQ 3, 35
IRQ 4, 36
IRQ 5, 37
IRQ 6, 38
IRQ 7, 39
IRQ 8, 40
IRQ 9, 41
IRQ 10, 42
IRQ 11, 43
IRQ 12, 44
IRQ 13, 45
IRQ 14, 46
IRQ 15, 47

/* Common ISR stub */
.extern isr_handler
.type isr_handler, @function
isr_common_stub:
	pusha
	mov %ds, %ax
	push %eax
	mov $0x10, %ax
	mov %ax, %ds
	mov %ax, %es
	mov %ax, %fs
	mov %ax, %gs
	push %esp
	call isr_handler
	add $4, %esp
	pop %eax
	mov %ax, %ds
	mov %ax, %es
	mov %ax, %fs
	mov %ax, %gs
	popa
	add $8, %esp
	iret

/* Common IRQ stub */
.extern irq_handler
.type irq_handler, @function
irq_common_stub:
	pusha
	mov %ds, %ax
	push %eax
	mov $0x10, %ax
	mov %ax, %ds
	mov %ax, %es
	mov %ax, %fs
	mov %ax, %gs
	push %esp
	call irq_handler
	add $4, %esp
	pop %eax
	mov %ax, %ds
	mov %ax, %es
	mov %ax, %fs
	mov %ax, %gs
	popa
	add $8, %esp
	iret
