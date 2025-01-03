/*
 * File:   eeprom.c
 * Author: Venkatesh
 *
 * Created on 13 June, 2023, 8:02 PM
 */


#include <xc.h>
#include "eeprom.h"
#include "i2c.h"

void write_external_eeprom(unsigned char address, unsigned char data)
{
	i2c_start();
	i2c_write(SLAVE_WRITE_EEPROM);
	i2c_write(address);
	i2c_write(data);
	i2c_stop();
	for (unsigned int wait = 3000; wait--;);
}

unsigned char read_external_eeprom(unsigned char address)
{
	unsigned char data;

	i2c_start();
	i2c_write(SLAVE_WRITE_EEPROM);
	i2c_write(address);
	i2c_rep_start();
	i2c_write(SLAVE_READ_EEPROM);
	data = i2c_read();
	i2c_stop();

	return data;
}