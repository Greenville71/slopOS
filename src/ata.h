#ifndef ATA_H
#define ATA_H

#include "types.h"

void ata_init(void);
void ata_read_sector(uint32_t lba, uint8_t* buffer);
void ata_write_sector(uint32_t lba, uint8_t* buffer);

#endif
