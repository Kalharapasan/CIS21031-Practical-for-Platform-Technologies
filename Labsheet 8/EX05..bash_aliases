#!/bin/bash

# Function to add 20 to a given number
Add_Val() {
    echo $(( $1 + 20 ))
}

# Prompt user to enter a number
read -p "Enter a number: " number

# Call the function to add 20 to the entered number
result=$(Add_Val $number)

# Print the final value
echo "Final value after adding 20: $result"
