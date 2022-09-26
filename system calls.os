#include<stdio.h>
#include<unistd.h>
int main()
{

  printf("Process ID: %d\n", getpid() );
  printf("Parent Process ID: %d\n", getpid() );

  return 0;
}

output:
Process ID: 12464
Parent Process ID: 12464

