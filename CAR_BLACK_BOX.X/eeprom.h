/* 
 * File:   eeprom.h
 * Author: Venkatesh
 *
 * Created on 13 June, 2023, 8:08 PM
 */

#ifndef EEPROM_H
#define	EEPROM_H

#define SLAVE_READ_EEPROM 0xA1
#define SLAVE_WRITE_EEPROM 0xA0

void write_external_eeprom(unsigned char address, unsigned char data); 
unsigned char read_external_eeprom(unsigned char address);

#endif	/* EEPROM_H */
