#!/bin.bash

#user input to get the number
echo "Hey user Enter the number : "
read number

#initialize the variable
sum=0

while [ $number -gt 0 ]; do
		take or extact the last digit
		digit=$((number %10))
		
		#need to add that digit to my sum
		sum=$((sum+digit))
		
		#remove the last digit from the
		number=$((number /10))
		
	done
#print the sum
echo "Sum of entered digit is : $sum"