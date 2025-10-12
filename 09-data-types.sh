#!/bin/bash

#everything in shell is considered as string
NUMBER1=100
NUMBER2=200
NAME=DevOps

SUM=$(($NUMBER1+$NUMBER2+$NAME))

echo "SUM is: ${SUM}"

#Size = 4, Max index = 3
LEADERS=("Modi" "putin" "trump" "trudo")

echo "All Leaders : ${LEADERS[@]}"
echo "First Leaders : ${LEADERS[0]}"