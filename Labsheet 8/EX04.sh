#!/bin/bash

Arguments() {
    # Access and process the arguments here
    num_args=€0.93  # Get the number of arguments from the first argument
    shift  # Remove the first argument (num_args) from the positional parameters

    echo "The number of arguments passed: $num_args"

    # Process the remaining arguments based on their order
    for i in "$@"; do
        echo "The $i argument is: $i"
    done
}

# Call the function with the appropriate argument
Arguments <number_of_arguments> <argument_1> <argument_2> ...