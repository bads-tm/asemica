#!/bin/bash
#Title: asemica-plus
#Description: To be Easier to use. Uses original code of asemica
#Author: bads.tm
#Date: 2017-08-18 WIP
#Usage: aseplus.sh

alias cls='printf "\033c"'
cls='printf "\033c"'
E128AppVer=PUB2


		printf '\033\143'
engine128appstart () {
#Ask What you want to do
echo
echo " asemica plus - easier to use, made by $(tput setaf 6)$(tput bold)bads.tm$(tput sgr 0)"
echo " Version $E128AppVer"
echo " $(tput setaf 1)NOTE:$(tput sgr 0) If you have non usual characters, the message will still be possbile to" 
echo " decrypt, but you will have spaces"
echo
echo " 1.  Decrypt a message" #d
echo " 2.  Encrypt a message" #d
echo " 3.  Decrypt a message from text file" #d?
echo " 4.  Encrypt a message from text file" #d?
echo " 5 . Decrypt a message from text file, and output that to text file" #d?
echo " 6.  Encrypt a message from text file, and output that to text file" #d?
echo Not working as of now:
echo " 7.  Decrypt a message from text file, output to text which is protected"
echo " 8.  Encrypt a message from text file, output to text which is protected"
echo " $(tput setaf 1)0. Test Zone$(tput sgr 0)"
echo " 9.  Encrypt Message in here to text file asemicaoutput.txt " #d?
echo
echo " Enter a number !"
read -rn1 wut2do

  if [[ $wut2do == "1" ]] || [[ $wut2do == "1" ]]; then
  #cls
  # Decrypt in terminal
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
		
	theoutput=$(echo "$msg" | ./asemica dec -c $thec)
	echo "$theoutput"
	notify-send "$theoutput"
    
  fi
  
  if [[ $wut2do == "2" ]] || [[ $wut2do == "2" ]]; then
  #cls
    # Encrypt in terminal
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
  
  #IN WORK
  
    if [[ $wut2do == "3" ]] || [[ $wut2do == "3" ]]; then
  #cls
  # Decrypt in terminal from text file
  printf '\033\143'
		#cls
		printf '\033\143'
		echo "Enter/paste text base (-c)"
		read thec
		
		printf '\033\143'
		echo "Input File (example.txt will load example.txt)"
		echo "(If you enter example, you will not load example.txt with extension)"
		read textin
		msg=$(<$textin)
		
		#cls
		printf '\033\143'
		echo Please Wait... It is now processing
		printf '\033\143'
		
	theoutput=$(echo "$msg" | ./asemica dec -c $thec)
	echo "$theoutput"
	notify-send "$theoutput"
    
  fi
  
  if [[ $wut2do == "4" ]] || [[ $wut2do == "4" ]]; then
  #cls
    # Encrypt in terminal from text file
  printf '\033\143'
		#cls
		printf '\033\143'
		echo "Enter/paste text base (-c)"
		read thec
		
		printf '\033\143'
		echo "Input File (example.txt will load example.txt)"
		echo "(If you enter example, you will not load example.txt with extension)"
		read textin
		msg=$(<$textin)
		
		#cls
		printf '\033\143'
		echo Please Wait... It is now processing
		printf '\033\143'
		
	theoutput=$(echo "$msg" | ./asemica enc -c $thec)
	echo "$theoutput"
	notify-send "$theoutput"
    
  fi
  
 #w2
 
     if [[ $wut2do == "5" ]] || [[ $wut2do == "5" ]]; then
  #cls
  # Decrypt in terminal from text file to text file
  printf '\033\143'
		#cls
		printf '\033\143'
		echo "Enter/paste text base (-c)"
		read thec
		
		printf '\033\143'
		echo "Input File (example.txt will load example.txt)"
		echo "(If you enter example, you will not load example.txt with extension)"
		read textin
		msg=$(<$textin)
		
		printf '\033\143'
		echo "Output File (example.txt if you enter example.txt)"
		echo "(If you enter example, you will have example file with to extension)"
		read textout
		
				#cls
		printf '\033\143'
		echo Please Wait... It is now processing
		printf '\033\143'
		
	theoutput=$(echo "$msg" | ./asemica dec -c $thec)
	
	echo "$theoutput"
	$theoutput>$textout
	
	notify-send "$theoutput"
    
  fi
  
  if [[ $wut2do == "6" ]] || [[ $wut2do == "6" ]]; then
  #cls
    # Encrypt in terminal from text file to text file
  printf '\033\143'
		#cls
		printf '\033\143'
		echo "Enter/paste text base (-c)"
		read thec
		
		printf '\033\143'
		echo "Input File (example.txt will load example.txt)"
		echo "(If you enter example, you will not load example.txt with extension)"
		read textin
		msg=$(<$textin)
		
		printf '\033\143'
		echo "Output File (example.txt if you enter example.txt)"
		echo "(If you enter example, you will have example file with to extension)"
		read textout
		
				#cls
		printf '\033\143'
		echo Please Wait... It is now processing
		printf '\033\143'
		
	theoutput=$(echo "$msg" | ./asemica enc -c $thec)
	
	echo "$theoutput"
	$theoutput>$textout
	
	notify-send "$theoutput"
    
  fi
 #w3
   
   ####9
  if [[ $wut2do == "9" ]] || [[ $wut2do == "9" ]]; then
  #cls
    # Encrypt in terminal from text file to text file
  printf '\033\143'
		#cls
		printf '\033\143'
		echo "Enter message to output asemicaoutput.txt "
		
		read msg
		#cls
		printf '\033\143'
		echo "Enter/paste text base (-c)"
		read thec
			
		textout=asemicaoutput.txt
		
				#cls
		printf '\033\143'
		echo Please Wait... It is now processing
		printf '\033\143'
		
	theoutput=$(echo "$msg" | ./asemica enc -c $thec)
	
	echo "$theoutput"
	echo "$theoutput">asemicaoutput.txt
	
	notify-send "$theoutput"
    fi
	
}

 #no leave
 engine128appstart
 