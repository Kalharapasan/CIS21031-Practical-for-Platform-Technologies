#!/bin/bash

# Function to count numbers until 10 recursively
recursiveFunction() {
    local num=$1
    if [ $num -le 10 ]; then
        echo -n "$num "
        recursiveFunction $((num + 1))
    fi
}

# Function to calculate the Fibonacci sequence recursively
fibonacci() {
    local num=$1
    if [ $num -eq 0 ]; then
        echo -n "0 "
        return
    elif [ $num -eq 1 ]; then
        echo -n "1 "
        return
    else
        local a=0
        local b=1
        echo -n "0 1 "
        local i=2
        while [ $i -lt $num ]; do
            local next=$((a + b))
            echo -n "$next "
            a=$b
            b=$next
            i=$((i + 1))
        done
    fi
}

# Main script starts here
echo "Counting numbers until 10:"
recursiveFunction 1
echo

echo "Fibonacci sequence of 10 numbers:"
fibonacci 10
echo