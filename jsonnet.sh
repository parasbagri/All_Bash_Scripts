#!/bin/bash

echo "Hey Choose an Option For your Script"
echo " a for exicute Your File "

# fileName="./file.jsonnet"
read choice
case $choice in 
     (a)
         echo "This is your file Exixution Process"
         jsonnet file.jsonnet -o outputfile.json
     (b)
         echo "No More Options"
    
esac         

 


