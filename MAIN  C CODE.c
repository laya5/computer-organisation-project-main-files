#include<stdio.h>
void func1(){
		int t;
	scanf("%d",&t);
	int w;
	for( w=0;w<t;w++)
	{
		int n,k;
	scanf("%d%d\n",&n,&k);
	char s[n];
	int i=0,g=k,h=0;
	while(i<n){
		scanf("%c",&s[i]);
		if(s[i]=='0'){
			g+=1;}
		else{
			g-=k;
			h+=g/(k+1);
			g=0;
		}
		i++;}
	 printf("%d",(h+g/(k+1)));}	
}
int main(){

	func1();		
return 0;	
}
