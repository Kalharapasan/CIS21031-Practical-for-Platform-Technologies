#!/bin/bash

# addition
addition() {
    echo "$((num1 + num2))"
}

# subtraction
subtraction() {
    echo "$((num1 - num2))"
}

# multiplication
multiplication() {
    echo "$((num1 * num2))"
}

# division
division() {
    if [ $num2 -ne 0 ]; then
        echo "$((num1 / num2))"
    else
        echo "Error: Division by zero!"
    fi
}

# modulus
modulus() {
    if [ $num2 -ne 0 ]; then
        echo "$((num1 % num2))"
    else
        echo "Error: Modulus by zero!"
    fi
}
echo "Welcome to Simple Calculator"

read -p "Enter the first number: " num1

read -p "Enter the second number(Your registration number last 02 Digits): " num2

echo "Choose an operation:"
echo "a. Addition"
echo "b. Subtraction"
echo "c. Multiplication"
echo "d. Division"
echo "e. Modulus"
read -p "Enter your choice (a-e): " choice

case $choice in
    a) result=$(addition);;
    b) result=$(subtraction);;
    c) result=$(multiplication);;
    d) result=$(division);;
    e) result=$(modulus);;
    *) echo "Invalid choice"; exit 1;;
esac

echo "Result: $result"