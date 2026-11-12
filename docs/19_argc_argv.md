## 19. Argc & Argv
```c
// printf:
#include <stdio.h>

int main(int argc, char **argv)
{
	if (argc > 1)
	{
		for (int i = 1; i < argc; i += 1)
		{
			printf("Argument %d: %s\n", i, argv[i]);
		}
	}

	else if (argc < 2)
	{
		printf("Usage: %s <argument>\n", (argc > 0) ? argv[0u] : "program_c");
	}

	return 0;
}
```