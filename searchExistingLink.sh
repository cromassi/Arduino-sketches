#!/bin/bash


LINK=$HOME/Downloads/linkw

if [[ -e $LINK ]]

then 

     echo "The link linkw exists "

     exit 0


else

     echo "The link linkw doesn't exists "

     exit 2

fi
