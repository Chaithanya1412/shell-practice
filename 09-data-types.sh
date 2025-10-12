#!/bin/bash

#everything in shell is considered as string
Number1=100
Number2=200
Name=Devops

SUM=$(($Number1+$Number2+$Name))

echo "SUM is : ${SUM}"

Leaders=("Modi "putin" "trump" "trudo")

echo "All leaders: ${Leaders}[@]"