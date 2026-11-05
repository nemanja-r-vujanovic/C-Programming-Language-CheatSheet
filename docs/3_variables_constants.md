## 3. Variables & Constants
```c
// printf:
#include <stdio.h>

// bool, false, true:
#include <stdbool.h>

// Preprocessor constant char:
#define LETTER 'C'

// Preprocessor constant bool:
#define ACTIVE true

// Preprocessor constant int:
#define NUMBER -1

// Preprocessor constant unsigned int:
#define UNSIGNED_NUMBER 10U

// Preprocessor constant float:
// #define PI 3.14159f

// Preprocessor constant double:
#define PI 3.14159

// Preprocessor constant string:
#define TEXT "Some example"

// Avoid using global variables when possible:
int global_number = 10;

int main(void)
{
	// 1 byte:
	char c = 'A';
	// char c = 65;

	// 1 byte:
	bool b = 1;
	// 0 = false; not zero = true

	// 4 bytes:
	int i = -100;
	// signed (by default) = negative and not negative values
	// int ascii = 'A';

	// 4 bytes:
	unsigned int ui = 100U;
	// unsigned = not negative values only

	// 4 bytes:
	float f = 99.99f;

	// 8 bytes:
	double d = 99.99;

	// 7 bytes = 6 chars + '\0' char:
	char s[] = "Hello!";

	// More data type modifiers:
	// short
	// long

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

	printf("\n");

	// ------------------------------------------------------------

	printf("Char: %zu byte\n", sizeof(c));
	printf("Bool: %zu byte\n", sizeof(b));
	printf("Int: %zu bytes\n", sizeof(i));
	printf("Unsigned int: %zu bytes\n", sizeof(ui));
	printf("Float: %zu bytes\n", sizeof(f));
	printf("Double: %zu bytes\n", sizeof(d));
	printf("String: %zu bytes\n", sizeof(s));

	printf("\n");

	// ------------------------------------------------------------

	// Constants:
	const char TYPE = '@';
	const bool HARD = 0;
	const int MAX = 1000;
	const unsigned int MIN = 0U;
	// const float REAL = 8.3f;
	const double REAL = 8.3;
	const char WORD[] = "Test";

	printf("Constant char: %c\n", TYPE);
	printf("Constant bool: %d\n", HARD);
	printf("Constant int: %d\n", MAX);
	printf("Constant unsigned int: %u\n", MIN);
	// printf("Constant float: %f\n", REAL);
	printf("Constant double: %lf\n", REAL);
	printf("Constant string: %s\n", WORD);

	printf("Preprocessor constant char: %c\n", LETTER);
	printf("Preprocessor constant bool: %d\n", ACTIVE);
	printf("Preprocessor constant int: %d\n", NUMBER);
	printf("Preprocessor constant unsigned int: %u\n", UNSIGNED_NUMBER);
	// printf("Preprocessor constant float: %f\n", PI);
	printf("Preprocessor constant double: %lf\n", PI);
	printf("Preprocessor constant string: %s\n", TEXT);

	printf("\n");

	// ------------------------------------------------------------

	// Data casting: ↓
	int x = 10;
	// Implicit casting (automatic):
	double y = x;
	printf("%lf\n", y);

	double z = 9.9;
	// Explicit casting (manual):
	int k = (int) z;
	printf("%d\n", k);

	return 0;
}
```