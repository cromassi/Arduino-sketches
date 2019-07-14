#!/bin/bash


DIRECTORY=$HOME/Downloads/pluto

if [[ -d $DIRECTORY ]]

then 

     echo "The directory pluto exists "

     exit 0


else

     echo "The directory pluto doesn't exists "

     exit 2

fi
