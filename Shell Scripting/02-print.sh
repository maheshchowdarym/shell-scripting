#!/bin/bash

# we can print a message on screen using 2 commands in linux
#1. echo - preferred one because of less syntax
#2. printf - more syntax

echo hello world
#Below is syntax for multiline printing
#\n - new line and \t- new tab ,\e - new color are escape sequences
echo -e "Hello,\n\nWelcome to today's class.\n\nRegards,\nManasa.K"

#Syntax for color print is. we can have foreground and background colors
# echo -e "\n[color text"

#git pull
# ls
# sh 02-print.sh
