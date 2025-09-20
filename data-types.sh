#!/bin/bash

NUMBER1=100
NUMBER2=200
NUMBER3=Devops

SUM=$(($NUMBER1+$NUMBER2+$NUMBER3))

echo "print sum : $SUM"

LEADERS=("Modi" "Putin" "Trump" "JinPing")
echo "All Leaders: ${LEADERS[@]}"
echo "First Leaders: ${LEADERS[0]}"
echo "Second Leaders: ${LEADERS[1]}"
echo "Third Leaders: ${LEADERS[2]}"