#!/bin/bash
# Redirectors are used when you have to give input not by typing but through a file
#Also used to save output to a file
# command ls >/temp/out 2>/temp/error - output goes to output file ; error goes to error file in temp folder
# ls > &/temp/out - saves output and error in same file
# ls >/temp/out 2>>/temp/error