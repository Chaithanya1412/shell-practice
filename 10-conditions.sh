#!/bin/bash

NUMBER=$1

if [$NUMBER -lt 10 ]; then
    echo "given number $NUMBER is less than 10"
else
    echo "Given number $NUMBER is greater than or equal to 10"
Fi

# -lt (less then)
# -gt (greater then)
# -eq (equals to)
# -ne (not equals to)