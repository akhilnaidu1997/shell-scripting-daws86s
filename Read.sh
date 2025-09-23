#!/bin/bash

echo " Enter the number : "
read NUM11

if [ $(($NUM11 % 2)) -eq 0 ]; then
    echo " Given number $NUM11 is Even"
else
    echo " Given number $NUM11 is odd"
fi
