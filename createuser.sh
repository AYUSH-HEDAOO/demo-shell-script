#!/bin/bash

<<help
this is shell script to create user
help

#usercreate

user_create(){
echo "==========creation of user stared========="

read -p "enter the username :" username

read -p "enter the password :" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "=============creation of user completed=========="
}

#userdelete
user_del(){ 
sudo userdel $username 
}

#checkuser

check_user(){
if [$(cat etc/passwd |grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "as wc is zero the user is deleted"
else
        echo "the user is not deleted" 

fi
}


user_create
user_del
check_user
