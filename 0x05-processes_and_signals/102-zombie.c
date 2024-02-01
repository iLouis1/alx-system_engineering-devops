#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - THis creates infinite loop making programs hang
 * Return: 0 Always
 */

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - This creates 5 zombie processes
 * Return: 0 Always
 */

int main(void)
{
	int k;
	pid_t zombie;

	for (k = 0; k < 5; k++)
	{
		zombie = fork();
		if (!zombie)
			return (0);
		printf("Zombie process created, PID: %d\n", zombie);
	}

	infinite_while();
	return (0);
}
