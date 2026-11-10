## 8. Functions & Strings
```c
// printf:
#include <stdio.h>

// va_list, va_start, va_arg, va_end:
#include <stdarg.h>

// String functions:
#include <string.h>

// Ctype functions:
#include <ctype.h>

// size_t, NULL:
#include <stddef.h>

// atoi, strtof, strtod:
#include <stdlib.h>

// Function declaration:
int calculate_sum(int a, int b);
int calculate_factorial(int n);
void variadic_sum(int n, ...);
void swap_numbers(int *a, int *b);
void string_upper(char s[]);
void string_lower(char s[]);
void string_reversed(char s[]);
void array_sorted(int d[], size_t d_size, char c);
void print_array(int d[], size_t d_size);
void convert_case(char s[], char c);
void swap_array(int d[], int j);

int main(void)
{
	// Function call: ↓
	int sum = calculate_sum(5, 10);
	printf("%d\n", sum);

	int fac = calculate_factorial(10);
	printf("%d\n", fac);

	variadic_sum(3, 1.5, 2.5, 6.5);
	variadic_sum(4, 1.5, 2.5, 6.5, 9.5);

	int x = 10;
	int y = 20;
	printf("Before swap: x = %d | y = %d\n", x, y);
	swap_numbers(&x, &y);
	printf("After swap: x = %d | y = %d\n", x, y);

	char name[] = "Nemanja";
	string_upper(name);
	string_lower(name);
	string_reversed(name);

	int array[] = {2, 1, 4, 3, 6, 5, 8, 7, 10, 9,};
	size_t array_size = sizeof(array) / sizeof(array[0]);

	array_sorted(array, array_size, 'A');
	print_array(array, array_size);

	array_sorted(array, array_size, 'D');
	print_array(array, array_size);

	printf("\n");

	// ------------------------------------------------------------

	// String functions: ↓
	// Enough space for strcpy:
	char str1[5 + 1] = "Hello";
	char str2[] = "World";

	// Length 5:
	printf("Length %zu\n", strlen(str1));

	// Length 5:
	printf("Length %zu\n", strlen(str2));

	// Size 6:
	printf("Size %zu\n", sizeof(str1));

	// Size 6:
	printf("Size %zu\n", sizeof(str2));

	// Compare:
	if (strcmp(str1, str2) == 0)
	{
		printf("Equal.");
	}

	// Copy (overwrite):
	strcpy(str1, "!");

	// Other string functions:
	// strcat(str1, str2);
	// strchr(str, 'A');
	// strrchr(str, 'A');
	// strstr(str, "sub");
	// strtok(str, ", ");
	// strcspn(str, ", ");
	// strncpy(dest, src, n);
	// strncat(dest, src, n);
	// strncmp(str1, str2, n);
	// ...

	int i = 0;
	float f = 0.0f;
	double d = 0.0;
	char s[15 + 1];

	// Convert string to integer:
	i = atoi("12345");

	// Convert string to float:
	f = strtof("12345", NULL);

	// Convert string to double:
	d = strtod("12345", NULL);

	// Convert non-string to string:
	size_t s_length = snprintf(s, sizeof(s), "Hello world%c x%d", '!', 3);

	printf("%d\n", i);
	printf("%f\n", f);
	printf("%lf\n", d);
	printf("%s\n", s);
	printf("%zu\n", s_length);

	return 0;
}

// ------------------------------------------------------------

// Function definition: ↓
int calculate_sum(int a, int b)
{
	return a + b;
}

// Recursive function:
int calculate_factorial(int n)
{
	if (n <= 1)
	{
		return 1;
	}

	return n * calculate_factorial(n - 1);
}

// Variadic function:
void variadic_sum(int n, ...)
{
	va_list args;
	va_start(args, n);

	double sum = 0.0;

	for (int i = 0; i <= n - 1; i += 1)
	{
		double d = va_arg(args, double);
		sum += d;
	}

	va_end(args);

	printf("Sum: %lf\n", sum);
}

void swap_numbers(int *a, int *b)
{
	int temp = *a;
	*a = *b;
	*b = temp;
}

void string_upper(char s[])
{
	convert_case(s, 'U');
}

void string_lower(char s[])
{
	convert_case(s, 'L');
}

void string_reversed(char s[])
{
	size_t s_length = strlen(s);
	char temp[s_length + 1];

	unsigned int j = 0U;
	for (int i = s_length - 1; i >= 0; i -= 1)
	{
		temp[j] = s[i];
		j += 1U;
	}

	temp[s_length] = '\0';
	printf("%s\n", temp);
}

void array_sorted(int d[], size_t d_size, char c)
{
	for (int i = 0; i <= d_size - 2; i += 1)
	{
		for (int j = 0; j <= d_size - 2 - i; j += 1)
		{
			if (c == 'A')
			{
				if (d[j] > d[j + 1])
				{
					swap_array(d, j);
				}
			}
			else if (c == 'D')
			{
				if (d[j] < d[j + 1])
				{
					swap_array(d, j);
				}
			}
		}
	}
}

void print_array(int d[], size_t d_size)
{
	for (int i = 0; i <= d_size - 1; i += 1)
	{
		printf("%d ", d[i]);
	}

	printf("\n");
}

void convert_case(char s[], char c)
{
	size_t s_length = strlen(s);
	char temp[s_length + 1];

	for (int i = 0; i <= s_length - 1; i += 1)
	{
		if (c == 'U')
		{
			temp[i] = toupper(s[i]);
		}
		else if (c == 'L')
		{
			temp[i] = tolower(s[i]);
		}
	}

	temp[s_length] = '\0';
	printf("%s\n", temp);

	// Other ctype functions:
	// isalnum()
	// isalpha()
	// isdigit()
	// isxdigit()
	// isblank()
	// isspace()
	// iscntrl()
	// isgraph()
	// isprint()
	// ispunct()
	// isupper()
	// islower()
	// ...
}

void swap_array(int d[], int j)
{
	int temp = d[j];
	d[j] = d[j + 1];
	d[j + 1] = temp;
}
```