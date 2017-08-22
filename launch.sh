#!/usr/bin/env bash

cd $HOME/LogoSticker

install() {
sudo apt-get install python-setuptools

sudo apt-get install python-pip

sudo apt-get install python-redis

sudo pip install pyTelegramBotAPI

sudo pip install pyTelegramBotAPI —upgrade

sudo apt-get update

sudo apt-get install python2.7

sudo pip install pytelegrambotapi py==1.4.29 pytest==2.7.2 requests==2.7.0 six==1.9.0 wheel==0.24.0
}

function print_logo() {
	echo -e "\033[38;5;600m"
	echo -e "LogoSticker :)"
	echo -e "By: @nimaftf"
	echo -e "Channel: @iranxfun"
	echo -e "\n\e[36m"
}


if [ "$1" = "install" ]; then
  install
 else 
if [ ! -f logosticker.py ]; then 
     echo "run"
     exit 1 
 fi 



   print_logo
   python logosticker.py $@
fi
