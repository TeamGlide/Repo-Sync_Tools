#!/bin/sh

version=1.0

chmod -R +x tools
PATH=tools:$PATH

while :
do

  clear
  echo 
  echo "#################################################"
  echo "#               AOSP-SYNC V-1                   #"
  echo "#===============================================#"  
  echo "#               1 - Sync CM10                   #"
  echo "#               2 - Sync AOKP Jellybean         #"
  echo "#               3 - Sync AoCP Jellybean         #"
  echo "#               4 - Sync CM9                    #"
  echo "#               5 - Sync AOSP Jellybean         #"
  echo "#               6 - Sync LiquidSmooth JB        #"
  echo "#               7 - Install Java-6              #"
  echo "#               8 - Install Required Packages   #"
  echo "#################################################"
  echo "#                 x - Exit                      #"
  echo "#################################################"
  echo 
  echo -n "Enter option: "
  read opt
  
  if [ "$?" != "1" ]
  then
    case $opt in
     1) sh tools/CM10.sh; echo "Done.";;
      2) sh tools/AOKP.sh; echo "Done.";;     
      3) sh tools/AoCP.sh; echo "Done.";;
      4) sh tools/CM9.sh; echo "Done.";;
      5) sh tools/AOSP-JB.sh; echo "Done";;
      6) sh tools/Liquid.sh; echo "Done";;
      7) sh tools/java-6.sh; echo "Done";;
      8) sh tools/packages.sh; echo "Done";;
      x) clear; echo; echo "Goodbye."; echo; exit 1;;
      *) echo "Invalid option"; continue;;
    esac
  fi

  tools/press_enter

done

