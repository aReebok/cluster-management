#!/bin/bash

let a=1+1
echo $a  #2

let "a = 1 + 1"
echo $a  #2

let a++
echo $a  #3

echo exproutputs:
expr 3+4 #3+4
expr 3 + 4 #7
expr 15 % 2

echo double parentheses outputs:
var=$(( 2+5 ))
echo $var #7
var=$((1+1))
echo $var #2

(( var++ ))
echo $var #3

