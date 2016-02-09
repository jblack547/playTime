#include <stdio.h>
#include <stdlib.h>
#include <string.h>



int wtf(char **buf)
{
	*buf = (char *)malloc(256);
        memcpy(*buf, "This is a string of length whatever\n",  35);
        printf("length %d\n", (int)strlen(*buf));
        return (0);
}
