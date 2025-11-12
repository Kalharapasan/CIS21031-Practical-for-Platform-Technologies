#!/bin/bash

# Function to perform addition
addition() {
  result=$(echo "$1 + $2" | bc)
  echo "Result of addition: $result"
}

# Function to perform subtraction
subtraction() {
  result=$(echo "$1 - $2" | bc)
  echo "Result of subtraction: $result"
}

# Function to perform multiplication
multiplication() {
  result=$(echo "$1 * $2" | bc)
  echo "Result of multiplication: $result"
}

# Function to perform division
division() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero!"
  else
    result=$(echo "scale=2; $1 / $2" | bc)
    echo "Result of division: $result"
  fi
}

# Function to perform modulo
modulo() {
  result=$(echo "$1 % $2" | bc)
  echo "Result of modulo: $result"
}

# Main script starts here
echo "Welcome to Simple Calculator"

# Read first number from user
read -p "Enter the first number: " num1

# Read second number from user (replace with your last 2 digits)
num2=50

# Display function list
echo "Choose an operation:"
echo "a. Addition"
echo "b. Subtraction"
echo "c. Multiplication"
echo "d. Division"
echo "e. Modulo"

# Read user choice
read -p "Enter your choice (a-e): " choice

# Perform operation based on user choice
case $choice in
  a) addition $num1 $num2 ;;
  b) subtraction $num1 $num2 ;;
  c) multiplication $num1 $num2 ;;
  d) division $num1 $num2 ;;
  e) modulo $num1 $num2 ;;
  *) echo "Invalid choice";;
esac