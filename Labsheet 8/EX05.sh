#!/bin/bash

# Define global variables var1 and var2
var1='A'
var2='B'

# Define function variable_scope
variable_scope() {
    # Modify the global variable var1
    var1='C'
    
    # Set var1 as a local variable and assign 'D' to it
    local var1='D'
    
    # Modify the global variable var2
    var2='E'
    
    # Print the values of var1 and var2 within the function
    echo "Inside the function:"
    echo "var1: $var1"
    echo "var2: $var2"
}

# Call the function
variable_scope

# Print the values of var1 and var2 outside the function
echo "Outside the function:"
echo "var1: $var1"
echo "var2: $var2"
