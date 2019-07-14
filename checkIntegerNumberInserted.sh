#!/bin/bash


echo -e " Type an integer number \c"

read PIPPO

if [[ $PIPPO -eq 200 ]]                   # ' -eq ' stands for ' ==', it's possible to use ' == ' insted of ' -eq '

then 

     echo "You typed the correct integer number "                               

     exit 0


else

     echo "You typed an uncorrect integer number " $PIPPO

     exit 2

fi
