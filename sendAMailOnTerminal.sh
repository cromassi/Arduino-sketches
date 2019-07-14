
#!/bin/bash





DATA=~/Pictures/logo.png
                                   
SOURCE=massimocroci1976@gmail.com
DESTINATION=maspandel@gmail.com
MAILSERVER=smtp.gmail.com
PORT=587
USERNAME=massimocroci1976@gmail.com
PASSWORD=Studente_1976


 
sendEmail    -f $SOURCE     -t  $DESTINATION    -cc    -bcc      -u "Subject of the email"   -m "Body of the email"  -s $MAILSERVER:$PORT   -xu $USERNAME     -xp  $PASSWORD      -o tls=yes   -a $DATA   # $HOME/Downloads/pippo.txt                                                                                                                    

# rm $HOME/Downloads/pippo.txt


# end of the script 
