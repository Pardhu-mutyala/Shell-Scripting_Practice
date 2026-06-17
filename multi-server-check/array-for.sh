#!/bin/bash

#array
items=("one" "two" "three" "four")


#for - loop
for item in "${items[@]}"
do 
   echo "print: $item"
done
