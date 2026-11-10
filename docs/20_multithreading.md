## 20. Multithreading
```c
// printf:
#include <stdio.h>

// pthread_t, pthread_create, pthread_join:
#include <pthread.h>

// NULL:
#include <stddef.h>

void *thread_function(void *argv)
{
	int *ptr = (int *) argv;
	int thread_id = *ptr;

	for (int i = 1; i <= 5; i += 1)
	{
		printf("Thread %d: %d\n", thread_id, i);
	}

	return NULL;
}

int main(void)
{
	pthread_t thread1;
	pthread_t thread2;

	int id1 = 1;
	int id2 = 2;

	// Create two threads:
	pthread_create(&thread1, NULL, thread_function, &id1);
	pthread_create(&thread2, NULL, thread_function, &id2);

	// Wait for both threads to finish:
	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

	printf("Both threads finished\n");

	return 0;
}
```