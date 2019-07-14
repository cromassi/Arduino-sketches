#!/bin/bash



echo -e " Type an integer number and press ENTER: \c"

read var 




if [[ $var < 200 ]]

then
    
     echo " The numeber you typed is < 200 "

elif [[ $var -eq 200 ]]

then

     echo " The numeber you typed is = 200 "
   
elif [[ $var > 200 ]]

then
     
     echo " The numeber you typed is > 200 "

else

    echo " Yot typed a wrong value "

fi

