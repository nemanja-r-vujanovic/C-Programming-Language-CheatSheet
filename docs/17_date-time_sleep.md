## 17. Date-Time & Sleep
```c
// printf, perror:
#include <stdio.h>

// time_t, time, struct tm, localtime:
#include <time.h>

// sleep (POSIX - Linux, macOS):
#include <unistd.h>

// NULL:
#include <stddef.h>

int main(void)
{
	char days[7u][9u + 1u] =
	{
		"Sunday",
		"Monday",
		"Tuesday",
		"Wednesday",
		"Thursday",
		"Friday",
		"Saturday",
	};

	while (1)
	{
		time_t now = time(NULL);

		if (now == (time_t) -1)
		{
			perror("Time error!");
			return 1;
		}

		// ------------------------------------------------------------

		struct tm *t = localtime(&now);

		if (t == NULL)
		{
			perror("Localtime error!");
			return 1;
		}

		// ------------------------------------------------------------

		// Date:
		int day_of_week = t -> tm_wday;
		int day = t -> tm_mday;
		int month = t -> tm_mon + 1;
		int year = t -> tm_year + 1900;

		// Time:
		int hour = t -> tm_hour;
		int minute = t -> tm_min;
		int second = t -> tm_sec;

		// ------------------------------------------------------------

		// Thursday, 01.01.2026. - 09:30:00
		printf("%s, %02d.%02d.%04d. - %02d:%02d:%02d\n",
				days[day_of_week], day, month, year,
				hour, minute, second);

		// Sleep 1 second:
		sleep(1);
	}

	return 0;
}
```