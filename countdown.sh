#!/bin/bash

count=$1

while (( count >0 ))   

do

echo ${count}

sleep 1

(( count -- ))    

done

echo "0"

echo "Countdown finished ! "

