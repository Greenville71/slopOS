#include "pci.h"
#include "ports.h"

uint32_t pci_read(uint8_t bus, uint8_t device, uint8_t func, uint8_t offset) {
    uint32_t address = (uint32_t)((bus << 16) | (device << 11) | (func << 8) | (offset & 0xFC) | ((uint32_t)0x80000000));
    outl(0xCF8, address);
    return inl(0xCFC);
}

void pci_write(uint8_t bus, uint8_t device, uint8_t func, uint8_t offset, uint32_t value) {
    uint32_t address = (uint32_t)((bus << 16) | (device << 11) | (func << 8) | (offset & 0xFC) | ((uint32_t)0x80000000));
    outl(0xCF8, address);
    outl(0xCFC, value);
}

void pci_init(void) {

}
