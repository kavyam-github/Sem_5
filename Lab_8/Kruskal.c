#include <stdio.h>

struct Edge {
    int src, dest, weight;
};

void sortEdges(struct Edge edges[], int E) {
    for (int i = 0; i < E - 1; i++) {
        for (int j = 0; j < E - i - 1; j++) {
            if (edges[j].weight > edges[j + 1].weight) {
                struct Edge temp = edges[j];
                edges[j] = edges[j + 1];
                edges[j + 1] = temp;
            }
        }
    }
}

int findParent(int parent[], int i) {
    if (parent[i] == i) return i;
    return parent[i] = findParent(parent, parent[i]); // Path compression
}

void unionSets(int parent[], int u, int v) {
    parent[u] = v;  // Attach root of one set to the other
}

void kruskal(int V, int E, struct Edge edges[]) {
    struct Edge result[V - 1]; // MST has at most V-1 edges
    int parent[V];

    for (int i = 0; i < V; i++) parent[i] = i;

    sortEdges(edges, E);

    int e = 0;
    for (int i = 0; i < E && e < V - 1; i++) {
        int u = findParent(parent, edges[i].src);
        int v = findParent(parent, edges[i].dest);

        if (u != v) {
            result[e++] = edges[i];
            unionSets(parent, u, v);
        }
    }

    printf("Edges in the Minimum Spanning Tree:\n");
    for (int i = 0; i < e; i++) {
        printf("%d -- %d == %d\n", result[i].src, result[i].dest, result[i].weight);
    }
}

int main() {
    int V = 9;
    int E = 11;

    struct Edge edges[] = {
        {0, 1, 10},
        {0, 2, 6},
        {0, 3, 5},
        {1, 3, 15},
        {2, 3, 4},
        {1, 4, 7},
        {3, 4, 8},
        {4, 5, 2},
        {5, 6, 1},
        {6, 7, 3},
        {7, 8, 9}
    };

    kruskal(V, E, edges);
    return 0;
}
