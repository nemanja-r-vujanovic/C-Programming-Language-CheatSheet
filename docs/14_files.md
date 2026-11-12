## 14. Files
```c
// printf, FILE, fopen, fclose, fprintf, fgets, ferror, EOF, remove:
#include <stdio.h>

// NULL:
#include <stddef.h>

// exit:
#include <stdlib.h>

int main(void)
{
	FILE *fp;
	char text[1024u + 1u];

	// ------------------------------------------------------------

	// File write: ↓
	fp = fopen("example.txt", "w");

	if (fp == NULL)
	{
		printf("Error opening file!\n");
		return 1;
	}

	if (fprintf(fp, "Hello world!\n") < 0)
	{
		printf("Error writing to file!\n");
		fclose(fp);
		return 1;
	}

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

	if (fprintf(fp, "This line is appended\n") < 0)
	{
		printf("Error appending to file!\n");
		fclose(fp);
		return 1;
	}

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

	if (ferror(fp))
	{
		printf("Error reading file!\n");
		fclose(fp);
		return 1;
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