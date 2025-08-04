#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 100000

void printArray(int arr[],int size){
    for(int i=0;i<size;i++){
        printf("%d ",arr[i]);
    }
    printf("\n");
}

int binarySearch(int arr[], int size , int target){
    int left = 0;
    int right = size -1;
    while (left <= right){
        int mid = left + (right-left)/2;
        if(arr[mid] == target){
            return mid;
        }
        else if (arr[mid] < target)
        {
            left = mid+1;
        }
        else{
            right = mid - 1 ;
        }
        
    }
        return -1;
}

int readArrayFromFile(const char *filename,int arr[],int n){
    FILE *f=fopen(filename,"r");
    if(!f){
        printf("Cannot open file %s\n",filename);
        return 0;
    }
    for(int i=0;i<n;i++){
        fscanf(f,"%d",&arr[i]);
    }
    fclose(f);
    return 1;
}

int main(){
    int arr[N];
    clock_t start,end;
    double time_taken;
    const char *filename = "D:/Sem-5/DAA_Lab/Array//wrost_case_100000.txt";
    if(readArrayFromFile(filename, arr, N)){
        start=clock();
        binarySearch(arr, N,50);
        end=clock();
        time_taken = ((double)(end - start)) / CLOCKS_PER_SEC*1000;
        printf("Time taken to sort the array from %s: %.2f ms\n", filename, time_taken);
        printf("Sorted array: \n");
        //printArray(arr, N);
    }
    else{
        printf("Failed to read array from file.\n");
    }
    return 0;
}