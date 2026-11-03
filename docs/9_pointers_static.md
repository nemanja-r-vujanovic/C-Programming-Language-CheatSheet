## 9. Pointers & Static
```c
// printf:
#include <stdio.h>

void count(void);

int main(void)
{
	// Pointers with variables: ↓
	int var = 10;

	// Pointer variable:
	int *ptr1 = &var;

	// Modify value:
	*ptr1 = 20;

	printf("Address: %p\n", ptr1);
	printf("Value: %d\n", *ptr1);

	// ------------------------------------------------------------

	// Pointers with arrays: ↓
	int arr[] = {1, 2, 3, 4, 5,};

	// ptr2 points to arr[0]:
	int *ptr2 = arr;
	printf("%d\n", *ptr2);

	// Change pointer to the next element:
	ptr2 += 1;
	printf("%d\n", *ptr2);

	// Change pointer to the previous element:
	ptr2 -= 1;
	printf("%d\n", *ptr2);

	// Access the next element without changing the pointer:
	int element = *(ptr2 + 1);
	printf("%d\n", element);

	// ------------------------------------------------------------

	// static:
	count();
	count();
	count();

	return 0;
}

void count(void)
{
	// Keep value between calls:
	static int num = 0;

	num += 1;
	printf("%d\n", num);
}
```