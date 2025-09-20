#!/bin/bash

START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Print total time $TOTAL_TIME"

echo "All variables passed in this script: $@"