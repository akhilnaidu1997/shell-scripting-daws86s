#!/bin/bash 

echo " Enter the number :"
read NUM1

if [ $NUM1 -lt 10 ]; then
    echo "Given number $NUM1 is less than 10"
elif [ $NUM1 -eq 10 ]; then
    echo "Given number $NUM1 is equal to 10"
else
    echo "Given number $NUM1 is greater than 10"
fi 