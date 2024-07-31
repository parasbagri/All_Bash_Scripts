#!/bin/bash

# make one script for iterating 1 to 5 numbers using While Loop

start=1
range=5

# While Loop 
while [ $start -le $range ] 
do 
     echo "Number Is : $start "
     let start++
done      
