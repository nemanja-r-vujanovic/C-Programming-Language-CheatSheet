## 5. If & Switch
```c
// printf:
#include <stdio.h>

// strcpy:
#include <string.h>

int main(void)
{
	// Assignment: =, +=, -=, *=, /=, %=, &=, |=, ^=, >>=, <<=
	// Arithmetic: +, -, *, /, %
	// Bitwise: &, |, ^, >>, <<, ~
	// Comparison: ==, !=, >, <, >=, <=
	// Logical: !, &&, ||
	// Ternary: ?, :
	// Increment: i++ or ++i (i += 1)
	// Decrement: i-- or --i (i -= 1)

	char s[13 + 1];
	int i = -100;

	// Ternary if_else:
	strcpy(s, (i <= -1) ? "Negative." : "Not negative.");
	printf("%s\n", s);

	printf("\n");

	// ------------------------------------------------------------

	// if:
	if (i <= -1)
	{
		printf("Negative.\n");
	}

	// if_else:
	if (i <= -1)
	{
		printf("Negative.\n");
	}
	else
	{
		printf("Not negative.\n");
	}

	// if_else-if_else:
	if (i <= -1)
	{
		printf("Negative.\n");
	}
	else if (i == 0)
	{
		printf("Neutral.\n");
	}
	else if (i >= 1)
	{
		printf("Positive.\n");
	}

	// Nested if:
	int age = 20;
	if (age >= 18)
	{
		printf("You are an adult.\n");

		if (age >= 21)
		{
			printf("You can enter the club.\n");
		}
	}

	printf("\n");

	// ------------------------------------------------------------

	// switch:
	char c = 'C';

	switch (c)
	{
		case 'B':
			printf("Bash\n");
			break;
		case 'C':
			printf("C\n");
			break;
		case 'J':
			printf("Java\n");
			break;
		case 'P':
			printf("Python\n");
			break;
		default:
			printf("Not my business!\n");
	}

	return 0;
}
```