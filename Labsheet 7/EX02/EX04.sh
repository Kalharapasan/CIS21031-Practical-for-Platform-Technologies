#!/bin/bash

# Prompt user to enter a number
read -p "Enter a number: " number

# Initialize a variable to store the reversed number
reversed_number=""

# Loop through each digit in the number and reverse them
while [ $number -gt 0 ]; do
  digit=$((number % 10))        # Get the last digit
  reversed_number="${reversed_number}${digit}"  # Append the digit to the reversed number
  number=$((number / 10))       # Remove the last digit
done

# Display the reversed number
echo "Reversed number: $reversed_number"