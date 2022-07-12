import numpy as np


def sieve(n):
    prime = np.ones((n + 1), dtype=int)
    p = 2
    while p * p <= n:
        if prime[p] == True:
            for i in range(p * p, n + 1, p):
                prime[i] = False
        p += 1

    return prime


if __name__ == "__main__":
    print("--- Hello from Python")
    num = 100
    prime = sieve(num)

    for p in range(2, num + 1):
        if prime[p]:
            print(p)
