#!/bin /bash


declare -a ARRAY   #3 declaration of an array (numerical index, for alphabetical index use option -A)

ARRAY[0]=1     # assign a value to the first element of the array

ARRAY[1]=2     # assign a value to the second element of the array
 
ARRAY[2]=3     # assign a value to the third element of the array

ARRAY[3]=4     # assign a value to the fourth element of the array




index=3

var2=5


echo ${ARRAY[@]}

echo ${ARRAY[*]}


echo $(( $index+$var2 ))

echo $(( ${ARRAY[2]}+$var2 ))

echo $(( ${ARRAY[$index]}+$var2 ))







