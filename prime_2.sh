#!/bin/bash
declare -a prime
for (( i = 0; i <= 10000; i++ )); do
    prime[$i]=0 #变量前要加$
done
for (( i = 2; i <= 10000; i++ )); do
    if [[ prime[i] -eq 0 ]]; then
        (( ++prime[0] ));
        prime[${prime[0]}]=$i
    fi
    for (( j=1; j<=prime[0] && prime[j]*i<=10000; j++ )); do
        prime[$i*${prime[$j]}]=1
        if [[ i%prime[j] -eq 0 ]]; then
            break
        fi
    done
done
echo ${prime[0]}
