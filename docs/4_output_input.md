## 4. Output & Input
```c
// printf, scanf, getchar, EOF, fgets, stdin:
#include <stdio.h>

// bool:
#include <stdbool.h>

// strcspn:
#include <string.h>

// NULL:
#include <stddef.h>

int main(void)
{
	// Escape sequences:
	// \n
	// \r
	// \f
	// \t
	// \v
	// \a
	// \b
	// \\
	// \"
	// \'
	// \?
	// \0

	char c = '\0';
	bool b = 0;
	int ib = 0;
	int i = 0;
	unsigned int ui = 0U;
	float f = 0.0f;
	double d = 0.0;
	char s[100 + 1] = {'\0',};

	// ------------------------------------------------------------

	printf("Char input: ");
	if (scanf("%c", &c) != 1)
	{
		printf("Invalid input!\n");
		return 1;
	}
	// Skip leading whitespace:
	// scanf(" %c", &c);

	printf("Bool input: ");
	if (scanf("%d", &ib) != 1)
	{
		printf("Invalid input!\n");
		return 1;
	}
	b = ib;

	printf("Int input: ");
	if (scanf("%d", &i) != 1)
	{
		printf("Invalid input!\n");
		return 1;
	}

	printf("Unsigned int input: ");
	if (scanf("%u", &ui) != 1)
	{
		printf("Invalid input!\n");
		return 1;
	}

	printf("Float input: ");
	if (scanf("%f", &f) != 1)
	{
		printf("Invalid input!\n");
		return 1;
	}

	printf("Double input: ");
	if (scanf("%lf", &d) != 1)
	{
		printf("Invalid input!\n");
		return 1;
	}

	// ------------------------------------------------------------

	// After scanf() and before fgets():
	int ch = 0;
	while (1)
	{
		ch = getchar();
		if (ch == '\n' || ch == EOF)
		{
			break;
		}
	}

	// ------------------------------------------------------------

	printf("String input: ");
	if (fgets(s, sizeof(s), stdin) == NULL)
	{
		printf("Invalid input!\n");
		return 1;
	}
	// Replace newline:
	s[strcspn(s, "\n")] = '\0';

	return 0;
}
```