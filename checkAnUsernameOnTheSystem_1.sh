#!/bin/bash

# search for an existing user on the system

clear

echo " This function 'll search for an existing user on the system "

echo " "

echo "  "

clear

echo " "

echo "======================================"

echo " " 

array1=($(cut -d: -f1 /etc/passwd))

echo   -e " Type the name of the searched user : "

read utentericercato






for (( i==0;i<${#array1[@]};i++ ))

do


   if [[ $utentericercato != ${array1[$i]} ]]                 

   then

      name=2

     
   else                                               

      echo " The user $utentericercato exists on the system "

      exit     # using ' break' the scipt exits all nested cycles only; using' exit' the script stops the whole processing
   
   
   fi

   
   
   
done  





echo " The user $utentericercato doesn't exist on the system !!!! "



































                                         

                

                                                                    

               
 
                                                              
           
