# MyOS

MyOS is a simple x86 operating system kernel, featuring a basic GUI, filesystem, and drivers.

## Project Structure

The repository is organized as follows:

*   **`src/kernel/`**: Core kernel components (memory management, ISRs, boot code).
*   **`src/drivers/`**: Hardware drivers (ATA, keyboard, mouse, PCI, network).
*   **`src/fs/`**: Filesystem implementation.
*   **`src/gui/`**: Graphical User Interface and graphics routines.
*   **`src/apps/`**: User-mode applications (calculator, notepad, game).
*   **`src/lib/`**: Utility libraries (string manipulation).
*   **`include/`**: Header files.
*   **`artifacts/`**: Build artifacts and analysis files.
*   **`iso/`**: ISO image generation directory.

## Prerequisites

To build MyOS, you need:

*   `gcc` (cross-compiler for i386-elf recommended, or system gcc with `-m32` support)
*   `binutils` (`ld`, `as`)
*   `grub-mkrescue` (part of GRUB 2)
*   `xorriso` (required by `grub-mkrescue`)
*   `make`

## Building

To build the kernel binary `myos.bin`:

```bash
make
```

To build a bootable ISO image `myos.iso`:

```bash
make iso
```

## Running

You can run the ISO using QEMU:

```bash
qemu-system-i386 -cdrom myos.iso
```

## Releases

To create a release package (tarball containing the ISO and README):

```bash
make release
```

This will create a `dist/` directory containing the release artifacts.

## Versioning

The current version is stored in the `VERSION` file.

## License

MIT
