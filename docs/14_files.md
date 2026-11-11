## 14. Files
```c
// printf, FILE, fopen, fclose, fprintf, fgets, EOF, remove:
#include <stdio.h>

// NULL:
#include <stddef.h>

// exit:
#include <stdlib.h>

int main(void)
{
	FILE *fp;
	char text[1024 + 1];

	// ------------------------------------------------------------

	// File write: ↓
	fp = fopen("example.txt", "w");

	if (fp == NULL)
	{
		printf("Error opening file!\n");
		return 1;
	}

	fprintf(fp, "Hello world!\n");

	if (fclose(fp) == EOF)
	{
		printf("Error closing file!\n");
		return 1;
	}

	// ------------------------------------------------------------

	// File append: ↓
	fp = fopen("example.txt", "a");

	if (fp == NULL)
	{
		printf("Error opening file!\n");
		return 1;
	}

	fprintf(fp, "This line is appended\n");

	if (fclose(fp) == EOF)
	{
		printf("Error closing file!\n");
		return 1;
	}

	// ------------------------------------------------------------

	// File read: ↓
	fp = fopen("example.txt", "r");

	if (fp == NULL)
	{
		printf("Error opening file!\n");
		return 1;
	}

	while (fgets(text, sizeof(text), fp) != NULL)
	{
		printf("%s", text);
	}

	if (fclose(fp) == EOF)
	{
		printf("Error closing file!\n");
		return 1;
	}

	// ------------------------------------------------------------

	// File remove: ↓
	if (remove("example.txt") != 0)
	{
		printf("Error removing file!\n");
		exit(1);
	}

	return 0;
}
```