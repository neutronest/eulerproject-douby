#include<stdio.h>

int tw[20]={0,3,3,5,4,4,3,5,5,4,3,6,6,8,8,7,7,9,8,8,};
int oh[10]={0,0,6,6,5,5,5,7,6,6,};

int turn(int x){return x>=100?tw[x/100]+7+(x%100==0?0:3+turn(x%100)):(x>=20?oh[x/10]+turn(x%10):tw[x]);}
int main(int c,char** v){return c>999?0:(c=turn(c)+main(c+1,NULL),v!=NULL?printf("%d\n",c+11):c);}
