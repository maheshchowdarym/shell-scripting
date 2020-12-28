#!/bin/bash
#Assign a name to data is variable
# Assign a name to group of commands is called as function
# Declare a function
function SAMPLE() {
  echo B =$b
  echo Hello from SAMPLE function
  a=10
}
#Way 2
SAMPLE1() {
  echo Hello from SAMPLE1 funstion
}
#Function name standards are same as variables in bash shell

# CAll a function
b=20
SAMPLE
SAMPLE1
echo A=$a

#You declare variable in main program, you can access in function & vice-versa
# You declare a variable in Main program, you can override the variable in function & vice-versa

#Inputs to the functions using special variables
SAMPLE2(){
  echo first Argument = $1
  echo Second Argument = $2

}
SAMPLE2 10 20
