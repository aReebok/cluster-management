#!/bin/bash
if [ $1 -gt 100 ]
then
    echo You entered a number larger than 100
elif (($1 == 0))
then
    echo Your number is 0
elif (($1 < 0))
then
    echo Your number is negative
elif(($1 <= 100))
then
    echo Your number is less than or equal to 100
else
    echo Your number is not a real number
fi
