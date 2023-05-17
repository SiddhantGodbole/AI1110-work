#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<time.h>
#include<string.h>
#define giv "\033[1;95m"
#define res "\033[0m"

int nos = 0 ;
int doin(int nos);
int mayn(int this);
int tek(int * aare);

int num ;
int glo ;
int low ;
int upp ;


int nex;
int mee;
int ent;
int nop;


int main(){

printf(giv"Put number of songs ->  ");
printf(res);
scanf("%d",&nos);
doin(nos);
}



int doin(int nos){
int songs[nos];
int ply[nos];
num = nos;
glo = nos;
if(nos < 100){
		low = nos * 100;
			upp = nos * 500000000;}					//piegon holes
else{
		low = nos * nos  ;
			upp = nos * 10000000000000;}


ent = clock ();
	srand(time(0) + ent*nos);
		 nop = rand() % (upp - low + 1 ) + low ;
 	
for( int i = 0; i < num ; i ++ ) songs[i] = i+1; 
 
for( int i = 0 ; i < nos ; i++){
		
		ent = clock ();							//more random
			srand(time(0) + ent*nos);
	
if ( nop < nos*10 ){ nop = rand() % (upp - low + 1 ) + 200 ;}

ply[i] = songs[ nop % glo ];
	mee = songs[nop % glo];
	
songs[ nop % glo ] = songs[glo-1];
songs[glo-1] = mee;

nop = (nop/nos) + ent % nos;

glo--;

}

for( int j = 0 ; j < num ; j++){
		printf(" %d",ply[j]);

}

tek( ply);

}

int tek(int * aare){
puts("");
int * ply = aare;
printf(giv"-> Put  : 0 _ to exit \n        : 1 _ to play new list\n while playing q twice to next\n 	and hold q to exit");
printf(res);
scanf( "%d",&nex);

if( nex == 0) return 1;
else if ( nex == 1 ) 
	{	
		for(int k = 0 ; k < num ; k++)
		{	mayn( ply[k]);
			
		
		}
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////



FILE * pFile;
 
#define ARRAYSIZE 100
#define SONGNAME 25
#define SONGARTIST 25
#define SONGLENGTH 25

#define TRACK_NUMBER

char cwd[200];
 
 struct Mp3rec
{
        char name[SONGNAME];
        char artist[SONGARTIST];
        char length[SONGLENGTH];
        char tname[TRACK_NUMBER];
};
 
 
int mayn (int this)
{
     
char thys[4];
sprintf(thys , "%d" , this  );
   if (getcwd(cwd , sizeof(cwd)) != NULL) {
       printf("Current working dir: %s\n", cwd);
   } 
   else {
       perror("getcwd() error");
       return 1;
   }

     printf("\n\n Play File\n\n");

    char mp3filename[200];
    strcat( cwd , "/");
    strcat( cwd , thys);
    strcat( cwd , ".mp3");
         printf("%s",cwd);
char comm[300] =  "mpg123 " ;
    strcat (comm  ,cwd ) ;
   if( system(comm) ){
   printf("aaahaha");
   return 0;
   }
    system("pause");
     
} 
