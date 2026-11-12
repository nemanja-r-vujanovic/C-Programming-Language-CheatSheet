## 8. Functions & Strings
```c
// printf, snprintf:
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
double calculate_sum(double a, double b);
unsigned int calculate_factorial(unsigned int n);
void variadic_sum(size_t n, ...);
void swap_numbers(int *a, int *b);
void string_upper(char *s);
void string_lower(char *s);
void string_reversed(const char *s);
void array_sorted(int *d, size_t d_size, char c);
void print_array(const int *d, size_t d_size);
void convert_case(char *s, char c);
void swap_array(int *d, size_t j);

int main(void)
{
	// Function call: ↓
	double sum = calculate_sum(3.3, 3.4);
	printf("%lf\n", sum);

	unsigned int fac = calculate_factorial(5u);
	printf("%u\n", fac);

	variadic_sum(3u, 1.5, 2.5, 6.5);
	variadic_sum(4u, 1.5, 2.5, 6.5, 9.5);

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
	size_t array_size = sizeof(array) / sizeof(array[0u]);

	array_sorted(array, array_size, 'A');
	print_array(array, array_size);

	array_sorted(array, array_size, 'D');
	print_array(array, array_size);

	printf("\n");

	// ------------------------------------------------------------

	// String functions: ↓
	// Enough space for strcpy() and strcat():
	char str1[7u + 1u] = "Hello";
	char str2[] = "!";

	// Length 5:
	printf("Length %zu\n", strlen(str1));

	// Length 1:
	printf("Length %zu\n", strlen(str2));

	// Size 8:
	printf("Size %zu\n", sizeof(str1));

	// Size 2:
	printf("Size %zu\n", sizeof(str2));

	// Compare:
	if (strcmp(str1, str2) == 0)
	{
		printf("Equal");
	}

	// Copy (overwrite):
	strcpy(str1, "Better");

	// Concatenate (append str2 to the end of str1):
	strcat(str1, str2);

	printf("%s\n", str1);

	// Other string functions:
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
	char s[15u + 1u];

	// Convert string to int:
	i = atoi("12345");

	// Convert string to float:
	f = strtof("12345", NULL);

	// Convert string to double:
	d = strtod("12345", NULL);

	// Convert non-string to string:
	int s_length = snprintf(s, sizeof(s), "Hello world%c x%d", '!', 3);

	// Calculate the required formatted string length without storing the string, excluding the '\0':
	// int s_length = snprintf(NULL, 0, "Hello world%c x%d", '!', 3);

	if (s_length < 0)
	{
		printf("Formatting error!\n");
		return 1;
	}
	else if ((size_t) s_length >= sizeof(s))
	{
		printf("Output was truncated!\n");
		return 1;
	}

	printf("%d\n", i);
	printf("%f\n", f);
	printf("%lf\n", d);
	printf("%s\n", s);
	printf("%d\n", s_length);

	return 0;
}

// ------------------------------------------------------------

// Function definition: ↓
double calculate_sum(double a, double b)
{
	return a + b;
}

// Recursive function (result wraps around on unsigned int overflow):
unsigned int calculate_factorial(unsigned int n)
{
	if (n < 2u)
	{
		return 1u;
	}

	return n * calculate_factorial(n - 1u);
}

// Variadic function (double parameters in this example):
void variadic_sum(size_t n, ...)
{
	va_list args;
	va_start(args, n);

	double sum = 0.0;

	for (size_t i = 0; i < n; i += 1u)
	{
		double d = va_arg(args, double);
		sum += d;
	}

	va_end(args);

	printf("Sum: %lf\n", sum);
}

void swap_numbers(int *a, int *b)
{
	if (a == NULL || b == NULL)
	{
		return;
	}

	int temp = *a;
	*a = *b;
	*b = temp;
}

void string_upper(char *s)
{
	convert_case(s, 'U');
}

void string_lower(char *s)
{
	convert_case(s, 'L');
}

void string_reversed(const char *s)
{
	if (s == NULL)
	{
		return;
	}

	size_t s_length = strlen(s);
	char temp[s_length + 1u];

	for (size_t i = 0; i < s_length; i += 1u)
	{
		temp[i] = s[s_length - 1u - i];
	}

	temp[s_length] = '\0';
	printf("%s\n", temp);
}

void array_sorted(int *d, size_t d_size, char c)
{
	if (d == NULL || d_size < 2u)
	{
		return;
	}

	if (c != 'A' && c != 'D')
	{
		printf("Invalid sorting option (use 'A' or 'D')!\n");
		return;
	}

	for (size_t i = 0u; i < d_size - 1u; i += 1u)
	{
		for (size_t j = 0u; j < d_size - 1u - i; j += 1u)
		{
			if (c == 'A')
			{
				if (d[j] > d[j + 1u])
				{
					swap_array(d, j);
				}
			}
			else if (c == 'D')
			{
				if (d[j] < d[j + 1u])
				{
					swap_array(d, j);
				}
			}
		}
	}
}

void print_array(const int *d, size_t d_size)
{
	if (d == NULL || d_size == 0u)
	{
		return;
	}

	for (size_t i = 0u; i < d_size; i += 1u)
	{
		printf("%d ", d[i]);
	}

	printf("\n");
}

void convert_case(char *s, char c)
{
	if (s == NULL)
	{
		return;
	}

	if (c != 'U' && c != 'L')
	{
		printf("Invalid conversion option (use 'U' or 'L')!\n");
		return;
	}

	size_t s_length = strlen(s);
	char temp[s_length + 1u];

	for (size_t i = 0u; i < s_length; i += 1u)
	{
		if (c == 'U')
		{
			temp[i] = (char) toupper((unsigned char) s[i]);
		}
		else if (c == 'L')
		{
			temp[i] = (char) tolower((unsigned char) s[i]);
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

void swap_array(int *d, size_t j)
{
	int temp = d[j];
	d[j] = d[j + 1u];
	d[j + 1u] = temp;
}
```