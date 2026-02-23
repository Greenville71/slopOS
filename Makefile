CC = gcc
AS = as
LD = ld

CFLAGS = -m32 -nostdlib -nostdinc -fno-builtin -fno-stack-protector -nostartfiles -nodefaultlibs -Wall -Wextra -Iinclude -isystem $(shell $(CC) -m32 -print-file-name=include)
LDFLAGS = -m elf_i386 -T linker.ld
ASFLAGS = --32

# Recursively find all source files
SRCS_C := $(shell find src -name "*.c")
SRCS_S := $(shell find src -name "*.s")
OBJS := $(SRCS_S:.s=.o) $(SRCS_C:.c=.o)

all: myos.bin

myos.bin: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

# Compilation rules
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@

iso: myos.bin
	mkdir -p iso/boot/grub
	cp myos.bin iso/boot/myos.bin
	echo 'menuentry "MyOS" {' > iso/boot/grub/grub.cfg
	echo '  multiboot /boot/myos.bin' >> iso/boot/grub/grub.cfg
	echo '}' >> iso/boot/grub/grub.cfg
	grub-mkrescue -o myos.iso iso

release: iso
	rm -rf dist
	mkdir -p dist/myos-$(shell cat VERSION)
	cp myos.iso dist/myos-$(shell cat VERSION)/
	cp README.md dist/myos-$(shell cat VERSION)/
	tar -czf dist/myos-$(shell cat VERSION).tar.gz -C dist myos-$(shell cat VERSION)
	@echo "Release created at dist/myos-$(shell cat VERSION).tar.gz"

clean:
	find src -name "*.o" -delete
	rm -f myos.bin myos.iso
	rm -rf iso dist

.PHONY: all clean iso release
