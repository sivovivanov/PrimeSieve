#include<stdio.h>

#define NUM 100

void sieve(int *prime) {
    int p = 2;
    while(p * p <= NUM) {
        if(prime[p]) {
            for(int i = p * p; i < NUM + 1; i += p) {
                prime[i] = 0;
            }
        }
        p++;
    }
}

int main() {
    printf("--- Hello from C\n");

    int prime[] = {[0 ... NUM] = 1};
    sieve(prime);

    for (int i = 2; i < NUM + 1; i++) {
        if(prime[i]) printf("%d\n", i);
    }

    return 0;
}
