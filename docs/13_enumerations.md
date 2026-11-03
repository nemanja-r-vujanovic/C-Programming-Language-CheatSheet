## 13. Enumerations
```c
// printf:
#include <stdio.h>

typedef enum Week
{
	Sun,
	Mon,
	Tue,
	Wed,
	Thu,
	Fri,
	Sat,
} Week;

int main(void)
{
	Week day = Wed;
	printf("%d\n", day);

	return 0;
}
```