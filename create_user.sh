#!/bin/bash

read -p "enter the username :" username

read -p "enter the password :" password

sudo useradd -m  "$username"

echo -e "$password\n$password" | sudo passwd "$username"

#cration of user completed

sudo userdel $username

#sudo userdel $username

cat /etc/passwd | grep $username | wc



echo "as wc is 0 the user is deleted"
