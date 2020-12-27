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

#Variable names can have characters a-z, A-Z, 0-9,_ others not allowed
#should not start with number however can start with _(underscore)
# Variables will not have data types, everything is string
# As user you should know that what data would come and

#Style
#Unix/Linux - VARNAME (All in caps)
#Java/Dev - VarName (CamelCase)

#To declare variable content dynamically we should be using
#1. Command substitution - VAR=$(command), Command output will go to VAR Variable
#2. Arithmetic substitution - VAR=$((Expression)) - output goes to variable
DATE=$(date +%F)
echo "Today's date is $DATE"
ADD=$((2+3))
echo ADD=$ADD

# Variables of Bash shell holds three properties
1.ReadWrite -
# Can change ReadWrite using "Readonly" - to make variable readonly
2.Scalar - variable can have only one value cannot hold multiple values
# using arrays we can overcome scalar property
# b=(10 20) - echo ${b[0]} gives 10 ; echo ${b[1]} gives 20
3.Local -
#Using export can convert into environment variables

















