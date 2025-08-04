#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 10000

void swap(int* a, int* b) {
    int t = *a;
    *a = *b;
    *b = t;
}

int partition(int arr[], int low, int high) {
    int pivot = arr[high];  
    int i = (low - 1);     
    for (int j = low; j <= high - 1; j++) {
        if (arr[j] <= pivot) {
            i++;   
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}


void quickSort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

void print_array(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int readArrayFromFile(const char *filename, int arr[], int n) {
    FILE *f = fopen(filename, "r");
    if (!f) {
        printf("Cannot open file %s\n", filename);
        return 0;
    }
    for (int i = 0; i < n; i++) {
        if (fscanf(f, "%d", &arr[i]) != 1) {
            printf("Error reading value at index %d\n", i);
            fclose(f);
            return 0;
        }
    }
    fclose(f);
    return 1;
}

int main() {
    int arr[N];
    clock_t start, end;
    double time_taken;
    const char *filename = "D:/Sem-5/DAA_Lab/Array//worst_case_1000.txt";
      if(readArrayFromFile(filename, arr, N)){
        start=clock();
        quickSort(arr, 1, N-1);
        end=clock();
        time_taken = ((double)(end - start)) / CLOCKS_PER_SEC*1000;
        printf("Time taken to sort the array from %s: %.2f ms\n", filename, time_taken);
        printf("Sorted array: ");
        print_array(arr, N);
    }
    else{
        printf("Failed to read array from file.\n");
    }
    return 0;
}