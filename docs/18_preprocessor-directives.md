## 18. Preprocessor Directives
```c
// File "myheader.h"

// Protection against being included multiple times:
#ifndef MYHEADER_H
#define MYHEADER_H

#define PI 3.14159

void say_hello(void);

#endif
```

***

```c
// File "myheader.c"

// printf:
#include <stdio.h>

// Include custom header:
#include "myheader.h"

// #define - Define macros:
#define SQUARE(x) ((x) * (x))
#define MAX(a,b) ((a) > (b) ? (a) : (b))
#define DEBUG

// #ifdef - Check if DEBUG is defined:
#ifdef DEBUG
	#define MESSAGE "Debug mode is ON"
#else
	#define MESSAGE "Debug mode is OFF"
#endif

// #ifndef - Define BUFFER_SIZE if not defined:
#ifndef BUFFER_SIZE
	#define BUFFER_SIZE 1024u
#endif

// #if, #elif, #else, #endif:
#if BUFFER_SIZE >= 1024u
	#define STATUS "Large buffer"
#elif BUFFER_SIZE >= 512u
	#define STATUS "Medium buffer"
#else
	#define STATUS "Small buffer"
#endif

int main(void)
{
	// Custom header function:
	say_hello();

	printf("\n");

	// ------------------------------------------------------------

	int a = 5;
	int b = 10;

	// Never use side effects (i += 1 and i -= 1) in macros:
	printf("Square: %d\n", SQUARE(a));
	printf("Maximum: %d\n", MAX(a, b));

	printf("\n");

	// ------------------------------------------------------------

	// Using PI:
	printf("PI: %.5lf\n", PI);

	printf("\n");

	// ------------------------------------------------------------

	// Conditional compilation:
	printf("Message: %s\n", MESSAGE);
	printf("Buffer: %u\n", BUFFER_SIZE);
	printf("Status: %s\n", STATUS);

	printf("\n");

	// ------------------------------------------------------------

	// Predefined macros:
	printf("File: %s\n", __FILE__);
	printf("Line: %d\n", __LINE__);
	printf("Date: %s\n", __DATE__);
	printf("Time: %s\n", __TIME__);

	// ------------------------------------------------------------

	// #undef - Remove a macro:
	#undef PI

	return 0;
}

void say_hello(void)
{
	printf("Hello from myheader.h!\n");
}

// #error - Force compilation error:
// #error "Compilation stopped!"
```