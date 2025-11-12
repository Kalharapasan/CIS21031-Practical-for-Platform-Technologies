#!/bin/bash

# Difining the funtion
Add_Val() {

    #user to enter a number
    read -p " Hey user enter the number: " number

    #add 20 to the number which has enterd by the user 
    ((output =num+20))

    #returing the output
    echo "$output"

}

#call the funtion
final_value=$(Add_Val)

#print for view the output
echo "The final sum after adding 20 is: $final_value"