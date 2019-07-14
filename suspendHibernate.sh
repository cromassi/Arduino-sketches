
#!/bin/bash



grep -p closed /proc/acpi/button/lid/LID/state       # check if your laptop's lid was closed


     if [[ $?==0 ]]    # if yes (if the laptop's lid was closed)

     then

     grep -q 0 /sys/class/power-supply/AC/online     # check if your laptop is not plugged-in

          if [[ $?==0 ]]   # if yes (if the laptop is not plugged-in)

          then 

          pm-suspend    # if your laptop's lid was closed and not plugged-in, proceed with suspenction/hibernation

          # pm-suspend-hybrid
  
          # pm-hibernate

          fi
    
     fi 



