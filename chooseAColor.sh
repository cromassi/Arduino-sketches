#!/bin/bash

echo " What is your favourite color ? "

echo " 1 - Red "

echo " 2 - Black "

echo " 3 - White "

echo " 4 - Blue "

echo " 5 - Yellow "

echo " 6 - Green "

echo " 7 - Gray "

echo " 8 - Brown "

echo " 9 - Purple "

echo " 10 - Orange "

echo -e " Type the number of your favourite color: \c"

read Color

echo "   "

case $Color in


      1) echo " Your favourite color is Red " ;;

      2) echo " Your favourite color is Black " ;;
   
      3) echo " Your favourite color is White " ;;

      4) echo " Your favourite color is Blue " ;;

      5) echo " Your favourite color is Yellow " ;;

      6) echo " Your favourite color is Green " ;;

      7) echo " Your favourite color is Gray " ;;

      8) echo " Your favourite color is Brown " ;;

      9) echo " Your favourite color is Purple " ;;

      10) echo " Your favourite color is Orange " ;;

      *) echo " You typed a wrong integer number, try again " ;;


esac

echo "   "
























