#!/bin/bash


                           

if [[ -e $HOME/Downloads/pippo.txt  ]]

then 

     echo "The file pippo.txt exists "

     exit 0


else

     echo "The file pippo.txt doesn't exist "

     exit 2

fi
