#!/bin/bash

# NUMBER=$1
# if [ $NUMBER -lt 10 ]; then
#     echo "Given Number $NUMBER is less than 10"
# elif [ $NUMBER -eq 10 ]; then
#     echo "Given Number $NUMBER is equal to 10"
# else
#     echo "Given Number $NUMBER is greater than 10"
# fi

echo "Please Enter the Number"
read NUMBER

if [ $(($NUMBER % 2)) -eq 0 ]; then
    echo "Given number $NUMBER is EVEN"
else
    echo "Given number $NUMBER is ODD"
fi
