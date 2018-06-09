#include <stdio.h>
#include <stdlib.h>

extern void myasm(void);

int main(void) {
	puts("!!!Hello World!!!"); /* prints !!!Hello World!!! */
	myasm();
	return EXIT_SUCCESS;
}
