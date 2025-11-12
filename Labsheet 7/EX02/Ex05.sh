#!/bin/bash

# Prompt user to enter a number
read -p "Enter a number: " number

# Convert the number to a string to iterate through each digit
number_str="${number}"

# Initialize a variable to store the reversed number
reversed_number=""

# Use a for loop to iterate through each character (digit) in the number string
for ((i = ${#number_str} - 1; i >= 0; i--)); do
  reversed_number="${reversed_number}${number_str:$i:1}"
done

# Display the reversed number
echo "Reversed number: $reversed_number"
