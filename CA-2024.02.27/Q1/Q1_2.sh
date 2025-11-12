#!/bin/bash

# Function to perform addition
addition() {
  result=$(echo "$1 + $2" | bc)
  echo "Result: $result"
}

# Function to perform subtraction
subtraction() {
  result=$(echo "$1 - $2" | bc)
  echo "Result: $result"
}

# Function to perform multiplication
multiplication() {
  result=$(echo "$1 * $2" | bc)
  echo "Result: $result"
}

# Function to perform division
division() {
  result=$(echo "scale=2; $1 / $2" | bc)
  echo "Result: $result"
}

# Function to perform modulus
modulus() {
  result=$(echo "$1 % $2" | bc)
  echo "Result: $result"
}

# Main script starts here
echo "Simple Calculator"
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

echo "Choose operation:"
echo "a. Addition"
echo "b. Subtraction"
echo "c. Multiplication"
echo "d. Division"
echo "e. Modulus"
read choice

case $choice in
  a)
    addition $num1 $num2
    ;;
  b)
    subtraction $num1 $num2
    ;;
  c)
    multiplication $num1 $num2
    ;;
  d)
    division $num1 $num2
    ;;
  e)
    modulus $num1 $num2
    ;;
  *)
    echo "Invalid choice"
    ;;
esac
