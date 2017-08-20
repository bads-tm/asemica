#!/bin/bash
#Title: asemica-plus
#Description: To be Easier to use. Uses original code of asemica
#Author: bads.tm
#Date: 2017-08-18 WIP
#Usage: aseplus.sh
		printf '\033\143'
engine128appstart () {
#Ask What you want to do
echo "asemica plus - easier to use, made by $(tput setaf 6)$(tput bold)bads.tm$(tput sgr 0)"
echo " "
echo "1.  Decrypt a message"
echo "2.  Encrypt a message"
echo Not working:
echo "3.  Decrypt a message from text"
echo "4.  Encrypt a message from text"
echo "5 . Decrypt a message from text output to text"
echo "6.  Encrypt a message from text output to text"
echo "7.  Decrypt a message from text output to text which is protected"
echo "8.  Encrypt a message from text output to text which is protected"
echo "$(tput setaf 1)10. Test Zone$(tput sgr 0)"
echo " "
echo "Enter a number !"
read -rn1 wut2do

  if [[ $wut2do == "1" ]] || [[ $wut2do == "1" ]]; then
  #cls
  printf '\033\143'
  		echo "To decrypt message Enter/paste message now"
		read msg
		#cls
		printf '\033\143'
		echo "Enter/paste text base (-c)"
		read thec
				#cls
		printf '\033\143'
		echo Please Wait... It is now processing
		printf '\033\143'
	theoutput=$(echo "$msg" | ./asemica enc -c $thec)
	echo "$theoutput"
	notify-send "$theoutput"
    
  fi
  
  if [[ $wut2do == "2" ]] || [[ $wut2do == "2" ]]; then
  #cls
  printf '\033\143'
  		echo "To encrypt message Enter/paste message now"
		read msg
		#cls
		printf '\033\143'
		echo "Enter/paste text base (-c)"
		read thec
				#cls
		printf '\033\143'
		echo Please Wait... It is now processing
		printf '\033\143'
	theoutput=$(echo "$msg" | ./asemica enc -c $thec)
	echo "$theoutput"
	notify-send "$theoutput"
    
  fi
 
 
 
 
 }
 #does not leave, only something like CTRL+SHIFT+C can stop it
 engine128appstart
