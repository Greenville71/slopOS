#include "pcnet.h"
#include "pci.h"
#include "isr.h"
#include "ports.h"

void pcnet_init(void) {
    pci_init();
    // Scan PCI for PCNet
}

void pcnet_send(uint8_t* data, uint32_t len) {
    (void)data;
    (void)len;
}
