#!/bin/bash

<<info
this script will  install the package that you passs in the arguments
eg. ./install_package nginx
./install_package docker.io

info

echo "installing $1"

sudo apt-get update >/dev/null

sudo apt-get install $1 -y

echo "installation completed"
