#include<stdio.h>
#include<stdlib.h>
#include<time.h>

#define N 100000

void write_best_case(){
    FILE *f=fopen("D:/Sem-5/DAA_Lab/Array/best_case_100000.txt","w");
    for(int i=0;i<=N;i++)
        fprintf(f, "%d ", i);
    fclose(f);
}

void write_worst_case(){
    FILE *f=fopen("D:/Sem-5/DAA_Lab/Array/worst_case_100000.txt","w");
    for(int i=N;i>=1;i--)
        fprintf(f, "%d ", i);
    fclose(f);
}

void write_avg_case(){
    int arr[N];
    for(int i=0;i<N;i++)
        arr[i]=i+1;

    //Shuffle array
    srand(time(NULL));
    for(int i=N-1;i>0;i--){
        int j=rand() % (i+1);
        int temp=arr[i];
        arr[i]=arr[j];
        arr[j]=temp;
    }

    FILE *f=fopen("D:/Sem-5/DAA_Lab/Array/avg_case_100000.txt","w");
    for(int i=0;i<N;i++)
        fprintf(f, "%d ", arr[i]);
    fclose(f);
}

int main(){
     write_best_case();
    write_worst_case();
    write_avg_case();
}