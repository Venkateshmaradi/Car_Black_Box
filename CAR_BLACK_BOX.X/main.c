/*
 * File:   main.c
 * Author: Venkatesh
 *
 * Created on 13 June, 2023, 8:04 PM
 */


#include <xc.h>
#include "main.h"
#include "matrix_keypad.h"
#include "clcd.h"
#include "ds1307.h"
#include "eeprom.h"
#include "adc.h"
#include "uart.h"
#include "i2c.h"

static void init_config(void)
{
	init_clcd();
	init_matrix_keypad();
	init_adc();
	init_i2c();
	init_ds1307();
	init_uart();

	// Storing initial password 0 0 0 0 to Ext. EEPROM
	write_external_eeprom(100, 0);
	write_external_eeprom(101, 0);
	write_external_eeprom(102, 0);
	write_external_eeprom(103, 0);
}

extern int log_iter, log_total_saved;
unsigned char time[9];
char speed[3];

void main(void)
{
	char gear[7] = {'N', 'R', '1', '2', '3', '4','5'};
	int gear_iter = 0;
	init_config();

	clcd_print("ON", LINE2(9));
	get_time();
	get_speed();
	store_key_log('O');

	while (1)
	{
		clcd_print("TIME     EV  RPM", LINE1(0));

		get_time();
		get_speed();

		clcd_print(time, LINE2(0));
		clcd_print(speed, LINE2(14));

		switch (read_switches(STATE_CHANGE))
		{
		case MK_SW2: /*Gear Up*/
		{
			store_key_log(gear[gear_iter]);

			clcd_putch('G', LINE2(9));
			clcd_putch(gear[gear_iter], LINE2(10));
			if (++gear_iter > 6)
				gear_iter = 6;
		}
		break;
		case MK_SW3: /*Gear Down*/
		{
			store_key_log(gear[gear_iter]);

			clcd_putch('G', LINE2(9));
			clcd_putch(gear[gear_iter], LINE2(10));
			if (--gear_iter < 0)
				gear_iter = 0;
		}
		break;
		case MK_SW1: /*Collison*/
		{
			store_key_log('C');
			clcd_print(" C", LINE2(9));
		}
		break;
		case MK_SW4: /*Password Menu*/
		{
			delay(2);

			store_key_log('P');
			if (get_password() == 0)
			{
				go_to_menu();
			}
			else if(get_password()==1)
			{
			    get_password();
			}

	

		}
		break;
		}
	}
}

void get_time(void)
{
	static unsigned char clock_reg[3];

	clock_reg[0] = read_ds1307(HOUR_ADDR);
	clock_reg[1] = read_ds1307(MIN_ADDR);
	clock_reg[2] = read_ds1307(SEC_ADDR);

	time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
	time[1] = '0' + (clock_reg[0] & 0x0F);

	time[2] = ':';

	time[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	time[4] = '0' + (clock_reg[1] & 0x0F);

	time[5] = ':';
	time[6] = '0' + ((clock_reg[2] >> 4) & 0x0F);
	time[7] = '0' + (clock_reg[2] & 0x0F);
	time[8] = '\0';
}

void get_speed(void)
{
	unsigned short adc_reg_val = (float)read_adc(CHANNEL4) / 1023 * 99;
	speed[0] = '0' + adc_reg_val / 10;
	speed[1] = '0' + adc_reg_val % 10;
	speed[2] = '\0';
}

void set_time(void)
{
	CLEAR_DISP_SCREEN;
	clcd_print("Enter New Time", LINE1(1));

	unsigned char dummy;

	/* Setting the CH bit of the RTC to Stop the Clock */
	dummy = read_ds1307(SEC_ADDR);
	write_ds1307(SEC_ADDR, dummy | 0x80);

	int hour = 0, min = 0, seconds = 0, field_select = 0;
	unsigned int blinker = 0;
	char time_buffer[9] = {0, 0, ':', 0, 0, ':', 0, 0, 0};
	char exit_flag = 0;

	while (!exit_flag)
	{

		/*Assign digits to time_buffer array*/
		time_buffer[0] = ((hour / 10) % 10);
		time_buffer[1] = hour % 10;
		time_buffer[3] = ((min / 10) % 10);
		time_buffer[4] = min % 10;
		time_buffer[6] = ((seconds / 10) % 10);
		time_buffer[7] = seconds % 10;

		clcd_putch(time_buffer[0] + '0', LINE2(0));
		clcd_putch(time_buffer[1] + '0', LINE2(1));
		clcd_putch(time_buffer[2], LINE2(2));
		clcd_putch(time_buffer[3] + '0', LINE2(3));
		clcd_putch(time_buffer[4] + '0', LINE2(4));
		clcd_putch(time_buffer[5], LINE2(5));
		clcd_putch(time_buffer[6] + '0', LINE2(6));
		clcd_putch(time_buffer[7] + '0', LINE2(7));

		if (blinker++ <= 20000)
		{
			switch (field_select)
			{
			case 0:
				clcd_putch(' ', LINE2(0));
				clcd_putch(' ', LINE2(1));
				break;
			case 1:
				clcd_putch(' ', LINE2(3));
				clcd_putch(' ', LINE2(4));
				break;
			case 2:
				clcd_putch(' ', LINE2(6));
				clcd_putch(' ', LINE2(7));
				break;
			}
		}

		switch (read_switches(STATE_CHANGE))
		{
		case MK_SW5: /*FIELD CHANGE*/
			field_select = (field_select + 1) % 3;
			break;
		case MK_SW4: /*increment Time*/
		{
			delay(5);
			// long press check
			if (read_switches(LEVEL_CHANGE) == MK_SW4)
				exit_flag = 1;
			else
			{
				switch (field_select)
				{
				case 0:
					hour = (hour + 1) % 24;
					break;
				case 1:
					min = (min + 1) % 60;
					break;
				case 2:
					seconds = (seconds + 1) % 60;
					break;
				}
			}
		}
		break;
		}
	}

	/*Update Time and write to RTC*/
	static unsigned char clock_reg[3];

	clock_reg[0] = read_ds1307(HOUR_ADDR);
	clock_reg[1] = read_ds1307(MIN_ADDR);
	clock_reg[2] = read_ds1307(SEC_ADDR);

	/*Storing Values in BCD Form*/
	/*Update Hour*/
	write_ds1307(HOUR_ADDR, (clock_reg[0] & 0xCF) | (hour / 10 << 4));
	write_ds1307(HOUR_ADDR, (clock_reg[0] & 0xF0) | (hour % 10));

	/*Update Minutes*/
	write_ds1307(MIN_ADDR, (clock_reg[1] & 0x0F) | (min / 10 << 4));
	write_ds1307(MIN_ADDR, (clock_reg[1] & 0xF0) | min % 10);

	/*Update Seconds*/
	write_ds1307(SEC_ADDR, (clock_reg[2] & 0x0F) | (seconds / 10 << 4));
	write_ds1307(SEC_ADDR, (clock_reg[2] & 0xF0) | seconds % 10);

	/* Clearing the CH bit of the RTC to Start the Clock */
	dummy = read_ds1307(SEC_ADDR);
	write_ds1307(SEC_ADDR, dummy & 0x7F);

	CLEAR_DISP_SCREEN;
	clcd_print("TIME UPDATED!", LINE1(1));
	delay(5);
	CLEAR_DISP_SCREEN;
}

void delay(int ms)
{
	for (int i = 0; i < ms; i++)
		for (unsigned int wait = 50000; wait--;)
			;
}