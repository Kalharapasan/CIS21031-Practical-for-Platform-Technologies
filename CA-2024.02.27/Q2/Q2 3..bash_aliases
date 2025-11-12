#!/bin/bash

fibonacci() {
    local n=$1
    if [ $n -le 1 ]; then
        echo $n
    else
        echo $(( $(fibonacci $((n-1))) + $(fibonacci $((n-2))) ))
    fi
}

# Generate Fibonacci sequence of the first 10 numbers
for ((i=0; i<10; i++)); do
    echo $(fibonacci $i)
done
