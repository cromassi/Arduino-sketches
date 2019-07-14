
#!/bin/bash

# Type, after the name of the script:

# ' l ' for searching all links;

# ' d' for =searching all directories;

# ' f ' for searching all files;

# under the ROOt directory and all subdirectories "

      


if [[ $1 == "f" ]]   # in case the user types " f "

   then 

   echo ' Looking for files '

   find / -maxdepth 1 -type f    # search the system (Root directory and a level deeper)  for all directories

elif [[ $1 == "d" ]]    # in case the user types " d "

      then

      echo ' Looking for directories '

      find / -maxdepth 1 -type d     # search the system (Root directory and a level deeper) for all files  

elif [[ $1 == "l" ]]  # in case the user types " l "

     then 

      echo ' Looking for links '
      
     find / -maxdepth 1 -type l    # search the system (Root directory and a level deeper) for all links  

else

     echo " You typed a wrong value "    # in case you type whatever else

fi

# end of the script
