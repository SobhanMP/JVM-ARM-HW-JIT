/*
 ============================================================================
 Name        : test.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern void myasm(void);

int main(void) {
	puts("!!!Hello World!!!"); /* prints !!!Hello World!!! */
	myasm();
	return EXIT_SUCCESS;
}
