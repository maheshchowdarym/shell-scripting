#!/bin/bash
# INPUTS
# Most of the times scripts needs inputs from the user. We cannot hardcode
# the values and also at the same time we cannot dynamically determine the values using the command subst
# So we need an input from the user and based on input we proceed with the script
# Input in shell scripting can be taken in 2 ways
# 1. During execution
# 2.Before execution
#Inputs during execution
# While executing the script we ask the input from the user using READ command
#This approach will be taken if for sure we know that the script will be executed manually else
#this approach will not work for automation
#Read.sh
read -r 'Enter your name: ' Name
read -r 'Enter your age: ' Age
echoe -e "your name = $Name \n your Age= $Age"

#Before Execution
#Input should be provided before execution and can be loaded by script
#Values will be loaded by special variables inside shell
#This is the approach taken by most of the commands in shell
# Special variables are $0 - $n, $*, $@, $#
# $0 = script name
#1-n are input arguments parsed in the order
# $* = All arguments
# $@ = All arguments
# $# = number of arguments
#Special-var.sh
echo Script name = "$0"
echo First Argument = "$1"
echo Second Argument= "$2"
echo  "$*"
echo "$@"
echo "$#"





