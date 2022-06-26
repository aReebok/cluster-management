#!/bin/bash

for var in {0..5}
do
    if (($var % 2 == 0))
    then
	printf "%d is even number and" $var
    else
	echo $var is odd number
	continue
    fi

    ret=$(($var/2))
    echo divides by 2 by $ret
done
echo Done
