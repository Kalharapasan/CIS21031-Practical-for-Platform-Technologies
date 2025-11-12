#!/bin/bash

# Function to perform addition
function addition {
    result=$(echo "$1 + $2" | bc)
    echo "Result of addition: $result"
}

# Function to perform subtraction
function subtraction {
    result=$(echo "$1 - $2" | bc)
    echo "Result of subtraction: $result"
}

# Function to perform multiplication
function multiplication {
    result=$(echo "$1 * $2" | bc)
    echo "Result of multiplication: $result"
}

# Function to perform division
function division {
    result=$(echo "scale=2; $1 / $2" | bc)
    echo "Result of division: $result"
}

# Function to perform modulus
function mod {
    result=$(echo "$1 % $2" | bc)
    echo "Result of MOD: $result"
}

# Read the first number from the user
read -p "Enter the first number: " num1

# Read the second number from the user
read -p "Enter the second number (last 2 digits of your registration number): " num2

# Display function list
echo "Choose the operation:"
echo "a. Addition"
echo "b. Subtraction"
echo "c. Multiplication"
echo "d. Division"
echo "e. MOD"
read -p "Enter your choice (a-e): " choice

# Perform operation based on user's choice
case $choice in
    a) addition $num1 $num2;;
    b) subtraction $num1 $num2;;
    c) multiplication $num1 $num2;;
    d) division $num1 $num2;;
    e) mod $num1 $num2;;
    *) echo "Invalid choice";;
esac
