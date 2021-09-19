#!/bin/bash
if [ $1 -gt 100 ]
then
    echo You entered a number larger than 100
fi

if (($1 == 0))
then
    echo Your number is 0
fi
