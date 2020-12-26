#!/bin/bash

echo welcome to devops training
echo devops training timings
echo devops trainer

Course_Name=Devops

echo welcome to $Course_Name training
echo $Course_Name training timings
echo $Course_Name trainer

#Declare a variable , VARNAME=DATA
# To access variable , $VARNAME

#a-z, A-Z, 0-9,_
#should not start with number

#Style
#Unix/Linux - VARNAME (All in caps)
#Java - VarName (CamelCase)

#To declare variable content dynamically we should be using
#1. Command substitution - VAR=$(command)
#2. Arithmetic substitution - VAR=$((Expression))
DATE=$(date +%F)
echo "Today's date is $DATE"
ADD=$((2+3))
echo ADD=$ADD















