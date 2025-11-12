#!/bin/bash

# Function to count numbers recursively until 10
function recursiveFunction {
    local num=$1
    if [ $num -gt 10 ]; then
        return
    fi
    echo $num
    num=$((num + 1))
    recursiveFunction $num
}

# Function to generate Fibonacci sequence recursively
function fibonacci {
    local num=$1
    if [ $num -le 1 ]; then
        echo $num
    else
        echo $(( $(fibonacci $(($num - 1))) + $(fibonacci $(($num - 2))) ))
    fi
}

# Call recursiveFunction with an initial value of 1
echo "Counting numbers until 10:"
recursiveFunction 1

# Generate Fibonacci sequence of 10 numbers
echo "Fibonacci Sequence of 10 numbers:"
for ((i=0; i<10; i++)); do
    echo -n "$(fibonacci $i) "
done
echo
