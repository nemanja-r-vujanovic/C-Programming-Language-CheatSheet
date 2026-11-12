## 20. Multithreading
```c
// printf:
#include <stdio.h>

// pthread_t, pthread_create, pthread_join (POSIX - Linux, macOS):
#include <pthread.h>

// NULL:
#include <stddef.h>

void *thread_function(void *arg)
{
	int *ptr = (int *) arg;
	int thread_id = *ptr;

	for (int i = 0; i < 5; i += 1)
	{
		printf("Thread %d: %d\n", thread_id, (i + 1));
	}

	return NULL;
}

int main(void)
{
	pthread_t thread1;
	pthread_t thread2;

	int id1 = 1;
	int id2 = 2;

	// Create first thread:
	int result1 = pthread_create(
		&thread1, NULL, thread_function, &id1
	);

	if (result1 != 0)
	{
		printf("Failed to create thread 1!\n");
		return 1;
	}

	// Create second thread:
	int result2 = pthread_create(
		&thread2, NULL, thread_function, &id2
	);

	if (result2 != 0)
	{
		printf("Failed to create thread 2!\n");

		// Wait for the first thread before exiting:
		if (pthread_join(thread1, NULL) != 0)
		{
			printf("Failed to join thread 1!\n");
		}

		return 1;
	}

	// Wait for both threads:
	int join1 = pthread_join(thread1, NULL);
	int join2 = pthread_join(thread2, NULL);

	if (join1 != 0 || join2 != 0)
	{
		printf("Failed to join one or both threads!\n");
		return 1;
	}

	printf("Both threads finished\n");

	return 0;
}
```