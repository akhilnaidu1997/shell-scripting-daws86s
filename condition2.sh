#!/bin/bash

NUM=$1

if [ $NUM -lt 10 ]; then
    echo "Given $NUM is less than 10"
elif [ $NUM -eq 10 ]; then
    echo "Given $NUM is equal to 10"
else
    echo "Given $NUM is greater than 10"
fi
