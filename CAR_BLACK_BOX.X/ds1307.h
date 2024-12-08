/* 
 * File:   ds1307.h
 * Author: Venkatesh
 *
 * Created on 13 June, 2023, 8:08 PM
 */

#ifndef DS1307_H
#define	DS1307_H

#define SLAVE_READ		0xD1
#define SLAVE_WRITE		0xD0

#define SEC_ADDR		0x00
#define MIN_ADDR		0x01
#define HOUR_ADDR		0x02
#define DAY_ADDR		0x03
#define DATE_ADDR		0x04
#define MONTH_ADDR		0x05
#define YEAR_ADDR		0x06
#define CNTL_ADDR		0x07

void init_ds1307(void);
void write_ds1307(unsigned char address1,  unsigned char data);
unsigned char read_ds1307(unsigned char address1);
#endif	/* DS1307_H */