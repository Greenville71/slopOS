CC = gcc
AS = as
LD = ld

CFLAGS = -m32 -nostdlib -nostdinc -fno-builtin -fno-stack-protector -nostartfiles -nodefaultlibs -Wall -Wextra -Isrc -isystem $(shell $(CC) -m32 -print-file-name=include)
LDFLAGS = -m elf_i386 -T linker.ld
ASFLAGS = --32

SRCS_C = $(wildcard src/*.c)
SRCS_S = $(wildcard src/*.s)
OBJS = $(SRCS_S:.s=.o) $(SRCS_C:.c=.o)

all: myos.bin

myos.bin: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

src/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

src/%.o: src/%.s
	$(AS) $(ASFLAGS) $< -o $@

iso: myos.bin
	mkdir -p iso/boot/grub
	cp myos.bin iso/boot/myos.bin
	echo 'menuentry "MyOS" {' > iso/boot/grub/grub.cfg
	echo '  multiboot /boot/myos.bin' >> iso/boot/grub/grub.cfg
	echo '}' >> iso/boot/grub/grub.cfg
	grub-mkrescue -o myos.iso iso

clean:
	rm -f src/*.o myos.bin myos.iso
	rm -rf iso
