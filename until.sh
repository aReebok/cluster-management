#!/bin/bash

for var in {0..5}
do
    echo $var
    if (($var % 2 == 0))
    then
	echo $var is even number
    else
	echo $var is odd number
    fi
    
done
echo Done
