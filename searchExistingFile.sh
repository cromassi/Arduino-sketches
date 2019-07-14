#!/bin/bash


FILE=$HOME/Downloads/pippo.txt

if [[ -f $FILE ]]

then 

     echo "The file pippo.txt exists"

     exit 0


else

     echo "The file pippo.txt doesn't exists"

     exit 2

fi
