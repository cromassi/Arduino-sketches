#!/bin/bash


# pippo=23

password=Studente_1976







function test(){


local hhh="Pluto"

clear

sleep 1

echo "======================================"


echo -e " Digita il tuo nome: "

read nome

echo -e " Digita il tuo cognome: " 

read cognome

clear

echo "=============================="

echo " Welcome " $nome $cognome
                      
echo "=============================="

sleep 3

}














function test_2(){


local kkk="Paperino"


clear

echo "========================="

echo -e " Digita la tua eta': "

read eta





for (( i==0; i<=eta; i++ ))

# for i in $eta

do
          echo $i

         #  $i=+1

done

sleep 1

clear

echo "======================================="

echo -e " Digita la tua password personale: "

read Password





# while [[ $Password != $password ]]

until [[ $Password == $password ]]

do

        clear

        echo "======================================="

        echo " La password inserita e' sbagliata "

        echo " "

        echo -e " Digita la tua password personale: "

        read Password


done

clear

echo "=================================="

echo " La tua password e': " $password

echo "================================="

sleep 2




clear

echo "==================================="

echo -e " Digita il tuo colore preferito: "

read colore











case $colore in




     blue) sleep 1

           clear

           echo " "

           echo "===================================="     

           echo " Il tuo colore preferito e' il blue" 

           echo "===================================="

           ;;






      red) sleep 1

           clear

           echo " "
      
           echo "====================================" 

           echo " Il tuo colore preferito e' il rosso"  

           echo "====================================" 

           ;;








     green) echo " "

            echo "====================================" 
      
            echo " Il tuo colore preferito e' il verde"  

            echo "====================================" 

            ;;








    yellow) echo " "
      
            echo "=====================================" 

            echo " Il tuo colore preferito e' il giallo"  

            echo "=====================================" 

            ;;









         *) echo " "
      
            echo "============================================="  

            echo " Il colore inserito non e' stato riconosciuto "  

            echo "=============================================" 

            ;;





esac

sleep 3

reset




}




function test_3(){ 
# echo "pippo"
}







test

test_2





#  end of the script




