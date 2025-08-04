#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 100000

void merge(int arr[], int left, int mid, int right) {
    int i, j, k;
    int n1 = mid - left + 1;
    int n2 = right - mid;

    int L[n1], R[n2];
    for (i = 0; i < n1; i++)
        L[i] = arr[left + i];
    for (j = 0; j < n2; j++)
        R[j] = arr[mid + 1 + j];

   
    i = 0; 
    j = 0; 
    k = left; 
    while (i < n1 && j < n2) {
        if (L[i] <= R[j]) {
            arr[k] = L[i];
            i++;
        } else {
            arr[k] = R[j];
            j++;
        }
        k++;
    }
    while (i < n1) {
        arr[k] = L[i];
        i++;
        k++;
    }
    while (j < n2) {
        arr[k] = R[j];
        j++;
        k++;
    }
}


void mergeSort(int arr[], int left, int right) {
    if (left < right) {
        int mid = left + (right - left) / 2;

      
        mergeSort(arr, left, mid);
        mergeSort(arr, mid + 1, right);
        merge(arr, left, mid, right);
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
    if (!readArrayFromFile("worst_case_100000.txt", arr, N)) {
        return 1;
    }
    printf("Original array:\n");
    print_array(arr, N);
    start = clock();
    mergeSort(arr, 0, N-1);
    end = clock();
    time_taken = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("\nSorted array:\n");
    print_array(arr, N);
    printf("\nTime taken to sort: %f seconds\n", time_taken);
    return 0;
}