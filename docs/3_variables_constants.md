## 3. Variables & Constants
```c
// printf:
#include <stdio.h>

// bool:
#include <stdbool.h>

// Preprocessor constant double:
#define PI 3.14159

// Preprocessor constant float:
// #define PI 3.14159f

// Avoid using global variables when possible:
int global_number = 10;

int main(void)
{
	// Data type modifiers:
	// unsigned
	// short
	// long

	// 1 byte:
	char c = 'A';

	// 1 byte:
	bool b = 1;
	// 0 = false; nonzero = true

	// 4 bytes:
	int i = -100;

	// 4 bytes:
	unsigned int ui = 100;

	// 4 bytes:
	float f = 99.99f;

	// 8 bytes:
	double d = 99.99;

	// 7 bytes = 6 chars + '\0' char:
	char s[] = "Hello!";
	// const char *s = "Hello!";

	// ------------------------------------------------------------

	printf("Char: %c\n", c);
	printf("Bool: %d\n", b);
	printf("Int: %d\n", i);
	printf("Int: %9d\n", i);
	printf("Global variable: %d\n", global_number);
	printf("Unsigned int: %u\n", ui);
	printf("Octal: %o\n", ui);
	printf("Octal: \101\n");
	printf("Hexadecimal lowercase: %x\n", ui);
	printf("Hexadecimal uppercase: %X\n", ui);
	printf("Hexadecimal: \x41\n");
	printf("Float: %f\n", f);
	printf("Float: %.2f\n", f);
	printf("Double: %lf\n", d);
	printf("Double: %.2lf\n", d);
	printf("String: %s\n", s);
	// printf("Percent: %%\n");

	// ------------------------------------------------------------

	printf("Char: %zu bytes\n", sizeof(c));
	printf("Bool: %zu bytes\n", sizeof(b));
	printf("Int: %zu bytes\n", sizeof(i));
	printf("Unsigned int: %zu bytes\n", sizeof(ui));
	printf("Float: %zu bytes\n", sizeof(f));
	printf("Double: %zu bytes\n", sizeof(d));
	printf("String: %zu bytes\n", sizeof(s));

	// ------------------------------------------------------------

	// Constant:
	const int MAX = 100;

	printf("Preprocessor constant: %lf\n", PI);
	printf("Constant: %d\n", MAX);

	// ------------------------------------------------------------

	// Data casting: ↓
	int x = 10;
	// Implicit casting (automatic):
	double y = x;
	printf("%lf\n", y);

	int z = 10;
	// Explicit casting (manual):
	double k = (double) z;
	printf("%lf\n", k);

	return 0;
}
```