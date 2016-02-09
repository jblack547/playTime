#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *data = NULL;

int main(void)
{
   
   wtf(&data);
   printf("%s\n", data);
   free(data);

//   char buffer[256];
//   make_buffer(buffer);
//   printf("Buffer String is %s\n", buffer);

   return (0);
}

#if 0
int make_buffer(char *buf)
{

   char *fname = "TheFileName.asu";
   printf("String length : %d pathname length: %d\n", strlen(fname), strlen("/cache/recovery"));
   snprintf(buf, (strlen(fname)+strlen("/cache/recovery/")+1), "/cache/recovery/%s", fname);


   return (0);

}
#endif


int wtf(char **buf)
{
	*buf = malloc(256);
        memcpy(*buf, "This is a string of length whatever\n",  35);
        printf("length %d\n", (int)strlen(*buf));
        return (0);
}
