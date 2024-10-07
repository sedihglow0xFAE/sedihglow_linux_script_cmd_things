#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <inttypes.h>
#include <time.h>

#define SECOND 1 /* sec */
#define MINUTE (60*SECOND)
#define HOUR   (60*MINUTE)
#define THINK_TIME (5*SECOND)

int main (int argc, char *argv[])
{

	/* some bullshit for color */
	int var = 0x29A;

	printf("smd\n"
	       "What number is this? --> %X\n", var);

	/* I know this isnt a program to actually be done and its just to test
	 * vim stuff.... but also should accept input for X ammount of time
	 * before telling them they are stupid or the answer.
	 */
	sleep(THINK_TIME);

	printf("Its this number! : %d\n", var);

	exit(EXIT_SUCCESS);
}
