## 23. Bonus: Linux
```c
// printf:
#include <stdio.h>

// system:
#include <stdlib.h>

int main(void)
{
	char commands[] =
		"bash -c '"
			"echo \"Hello world!\" &&\n"
			"cd \"/\" &&\n"
			"pwd &&\n"
			"ls \n"
		"'";

	if (system(commands) != 0)
	{
		printf("System error!\n");
		return 1;
	}

	return 0;
}
```