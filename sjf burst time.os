#include<stdio.h>
int main()
{
int bt[20],p[20],wt[20],tat[20],i,j,n,total=0,pos,temp,floatavg_wt,avg_tat,avg_wt;
printf("Enter number of process:");
scanf("%d",&n);
printf("\n Enter Burst Time:\n");for(i=0;i<n; i++)
{printf("p%d:",i+1);scanf("%d",&bt[i]);p[i]=i+1; }
for(i=0;i<n;i++)
{ pos=i;
for(j=i+1;j<n;j++)
{if(bt[j]<bt[pos]) pos=j; } temp=bt[i]; bt[i]=bt[pos]; bt[pos]=temp; temp=p[i]; p[i]=p[pos]; p[pos]=temp;
}wt[0]=0;for(i=1;i<n;i++)
{ wt[i]=0;for(j=0;j<i;j++) wt[i]+=bt[j]; total+=wt[i];
}avg_wt=(float)total/n;
 total=0;printf("\nProcess\t Burst Time \tWaiting Time\tTurnaround Time");for(i=0;i<n;i++)
{
tat[i]=bt[i]+wt[i]; total+=tat[i];printf("\np%d\t\t %d\t\t %d\t\t\t%d",p[i],bt[i],wt[i],tat[i]);
}avg_tat=(float)total/n;printf("\n\nAverage Waiting Time=%f",avg_wt);
printf("\nAverage Turnaround Time=%f\n",avg_tat);
return 0;
}

output:
Enter number of process:4

 Enter Burst Time:
p1:10
p2:3
p3:5
p4:7

Process  Burst Time     Waiting Time    Turnaround Time
p2               3               0                      3
p3               5               3                      8
p4               7               8                      15
p1               10              15                     25

Average Waiting Time=0.000000
Average Turnaround Time=0.000000


