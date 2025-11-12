#!/bin/bash

recursiveFunction() {
    local num=$1
    if [ $num -le 10 ]; then
        echo $num
        recursiveFunction $((num + 1))
    fi
}

recursiveFunction 1
 