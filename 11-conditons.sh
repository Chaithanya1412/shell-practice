#!/bin/bash

echo "enter the number:"
read NUMBER

if [$(($NUMBER % 2)) -eq 0] then
    echo "Given number $number is EVEN"
else
    echo "given number $number is ODD"
fi
