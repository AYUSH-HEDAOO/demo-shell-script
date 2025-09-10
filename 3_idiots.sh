#!/bin/bash

hero="rancho"

villain="Virus"

echo "3 idiots ka hero hai $hero"

echo "3 idiots villain hai $villain"


#shell and environment varible bhi hote hai (predefined)

echo "the current logged in user is $USER"

#we want defined varible but want to take values for user only

read  -p " rancho ka pura naam kya hai?" fullname


echo "rancho ka pura naam $fullname tha" 


#arguments
 
#./3_idiots.sh raju farhan rancho 

echo "movie ka nam : $0"

echo "first idiot is : $1"

echo "second idiot us : $2"

echo "thired idiot is  : $3"

echo "the 3 idiots are: $@"

echo "the total no of idiots are : $#"

