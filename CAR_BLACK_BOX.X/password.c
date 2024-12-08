/*
 * File:   password.c
 * Author: Venkatesh
 *
 * Created on 13 June, 2023, 8:05 PM
 */


#include <xc.h>
#include "main.h"
#include "matrix_keypad.h"
#include "clcd.h"
#include "eeprom.h"


char get_password(void)
{
	CLEAR_DISP_SCREEN;
	clcd_print("ENTER PASSWORD", LINE1(1));
	char entered_password[4] = {0};
	int total_attempts = 3;
	int i = 0;
	int delay = 0;
    static char flag=0;
	unsigned char key_pressed;
    while (flag !=1)
	{
		key_pressed = read_switches(STATE_CHANGE);
		// to avoid bouncing effect
		for (unsigned int wait = 5000; wait--;)
			;

		if (i < 4)
		{
			if (delay++ < 15000)
			{ 
				clcd_putch('_', LINE2(i));
			}
			else
			{
				clcd_putch(' ', LINE2(i));
			}

			switch (key_pressed)
			{
			case MK_SW5: /*To Enter 1*/
			{
				clcd_print("*", LINE2(i));
				entered_password[i++] = 1;
			}
			break;
			case MK_SW4: /*To Enter 0*/
			{
				clcd_print("*", LINE2(i));
				entered_password[i++] = 0;
			}
			}
		}
		else // if (i == 4)
		{
			int count = 0;

			// compare passwords
			for (int j = 0; j < 4; j++)
			{
				// read password from 100 address
				if (read_external_eeprom(100 + j) == entered_password[j])
					count++;
			}

			if (count == 4)
			{
				CLEAR_DISP_SCREEN;
                                return 0;
			}
			else 
			{
				i = 0;
				CLEAR_DISP_SCREEN;
                                clcd_print("FAILED!", LINE2(4));
				for (int p = 0; p < 10; p++)
					for (unsigned int wait = 50000; wait--;);
				CLEAR_DISP_SCREEN;
				clcd_print("ATTEMPTS LEFT:", LINE1(0));
				clcd_putch('0' + --total_attempts, LINE1(15));
            }
		}

            if(total_attempts==0)
            {
              flag=1;
              clcd_print("YOU ARE BLOCKED ",LINE1(0));
            unsigned  char k=120;
	      while(k!=0)
	      {
                 clcd_putch((k%10) + '0',LINE2(10));
                 clcd_putch(((k/10)%10) + '0',LINE2(9));
                 clcd_putch(((k/100)%10) + '0',LINE2(8));
                 clcd_print("WAIT..",LINE2(0));
                 for(unsigned long int c =0;c<200000;c++);
		 k--;
	    }
	      if(flag==1)
	      {
		  flag=0;
		  total_attempts=3;
				CLEAR_DISP_SCREEN;
	clcd_print("ENTER PASSWORD", LINE1(1));
	      clcd_print("                ",LINE2(0));
	      }
	   }
	}	    
}
void change_password(void)
{
	char exit_flag = 0;
	while (!exit_flag)
	{
		CLEAR_DISP_SCREEN;
		char i = 0;
		char password[4] = {0}, confirm[4] = {0};
		while (i < 4)
		{
			clcd_print("ENTER NEW PASSWORD", LINE1(0));

			switch (read_switches(STATE_CHANGE))
			{
			case MK_SW5: /*Input 1*/
			{
				clcd_putch('*', LINE2(0 + i));
				password[i++] = 1;
			}
			break;
			case MK_SW4: /*Input 0*/
			{
				clcd_putch('*', LINE2(0 + i));
				password[i++] = 0;
			}
			}
		}

		CLEAR_DISP_SCREEN;
		i = 0;

		while (i < 4)
		{
			clcd_print("RE-ENTER PASSWORDR", LINE1(2));

			switch (read_switches(STATE_CHANGE))
			{
			case MK_SW5: /*Input 1*/
			{
				clcd_putch('*', LINE2(0 + i));
				confirm[i++] = 1;
			}
			break;
			case MK_SW4: /*Input 0*/
			{
				clcd_putch('*', LINE2(0 + i));
				confirm[i++] = 0;
			}
			}
		}

		i = 0;
		for (int j = 0; j < 4; j++)
		{
			if (confirm[j] == password[j])
				i++;
		}

		CLEAR_DISP_SCREEN;

		if (i == 4)
		{
			for (int j = 0; j < 4; j++)
				write_external_eeprom(100 + j, password[j]);

			CLEAR_DISP_SCREEN;

			clcd_print("PASSWORD STORED", LINE1(0));
			clcd_print("SUCCESSFULLY!", LINE2(1));

			delay(10);
			CLEAR_DISP_SCREEN;

			exit_flag = 1;
		}
		else
		{
			clcd_print("PASSWORD NOT MATCHING", LINE1(0));
			clcd_print("RETRY ENTERING", LINE2(1));
		}

		for (int j = 0; j < 10; j++)
			for (unsigned int wait = 50000; wait--;);
	}
}