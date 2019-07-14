


#!/bin/bash

# touch $HOME/Downloads/pippo.txt

DATA=$HOME/Downloads/pippo.txt


df -hT > $DATA


if [[ -e $DATA ]]

then

   mail -s " Test email " root < $DATA

   exit 0

else

  echo " The file logo.png is not present under /home/workbench/Pictures "

  exit 2

fi
