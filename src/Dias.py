
def calc_ways(n):
    ls = [0] * (n+1)
    ls[0]=1
    for i in range(1, n+1):
        j=1
        while (j<=6 and i-j>=0):
            ls[i] += ls[i-j];
            j += 1;
        i += 1;

    print ls[n]

calc_ways(610)
