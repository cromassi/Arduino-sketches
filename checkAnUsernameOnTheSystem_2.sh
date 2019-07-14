#!/bin/bash

# author: Massimo Croci

# Sofia(BG) / Sunday 07.23.2017







function checkAValidUser(){    # This function checks if a typed username is registered on the GNU-Linux system


declare -a names

names=($(cut -d: -f1 /etc/passwd))



numberNames=$(wc -l /etc/passwd|cut -d/ -f1)      # numberNames=echo "${#names[*]}"



echo " "

echo " "

clear

echo " "

echo "==========================================================================================================="

echo " "

echo " "


echo -e " Type your account : "

read User_1






for (( j=0; j<${#names[@]} ;j++ ))       

do


   if [[ $User_1 == ${names[$j]}  ]]

   then 
   
   
     echo " "

     echo " "

     clear

     echo " "

     echo "======================================================================================================="

     echo " "

     echo " "

     echo " Dear $User_1, your account is properly  registered on the system "
    
     exit

	   
   fi 


done





while (( 1 ))

do

   clear

   echo "==============================================================================================================="
   
   echo " "

   echo " "

   echo -e "The account you typed is not valid ! Type your account: "                         

   read User_2



     for (( i=0; i<numberNames ;i++ ))

     do


        if [[ $User_2 == ${names[i]} ]]

        then

             clear

             echo "===================================================================================================="
     
             echo " "

             echo " "

             echo " Dear user $User_2, you are registered as valid user on this system " 

             exit                    # using 'exit', the function exits all nested cycles ('for' and 'while' cycles); using 'break' instead of 'exit', the fuction exits the current nested cycle only (' for' cycle) 
       
             echo " \n "

            echo " \n "

       
        fi


     done



done


unset names



}








checkAValidUser






