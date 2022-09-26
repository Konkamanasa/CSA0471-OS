#include<stdio.h>
int main ()
{
int i,j,n,a[50],frame[10],nf,k,avail,count=0;
printf("\n ENTER THE NUMBER OF PAGES:\n");
scanf("%d",&n);
printf("\n ENTER THE PAGE NUMBER:\n")
;for(i=1;i<=n;i++)scanf("%d",&a[i]);
printf("\n ENTER THE NUMBER OF FRAMES :");
scanf("%d",&nf);for(i=0;i<nf;i++)frame[i]= -1;j=0;
printf("\tref string\t page frames\n");for(i=1;i<=n;i++)
{
printf("%d\t\t",a[i]);avail=0;for(k=0;
k<nf;k++)  
  if(frame[k]==a[i])avail=1;
if (avail==0)
{
frame[j]=a[i];j=(j+1)%nf;
count++;for(k=0;k<nf;k++)
printf("%d\t",frame[k]);
}
printf("\n");
}
printf("Page Fault Is %d",count);
}

ENTER THE NUMBER OF PAGES:
20

 ENTER THE PAGE NUMBER:
7
3
2
5
1
2
1
4
5
1
3
2
6
1
2
1
4
1
2
1

 ENTER THE NUMBER OF FRAMES :3
        ref string       page frames
7               7       -1      -1
3               7       3       -1
2               7       3       2
5               5       3       2
1               5       1       2
2
1
4               5       1       4
5
1
3               3       1       4
2               3       2       4
6               3       2       6
1               1       2       6
2
1
4               1       4       6
1
2               1       4       2
1
Page Fault Is 12
