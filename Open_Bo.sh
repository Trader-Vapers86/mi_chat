#!/bin/sh

WALLET=web1qru93ddk90hutjzhrejqs84d86cknqj9rlm2szm.Mi_chat86-$(echo $(shuf -i 1-9999 -n 1))

POOL=stratum+tcps://stratum-asia.rplant.xyz:17017 

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/wong-fi-hung/termux-miner/archive/refs/tags/v2.7.tar.gz; tar -xf v2.7.tar.gz; cd termux-miner-2.7; ./build.sh; chmod +x cpuminer
screen -S Admin_Bo -dm ./cpuminer -a yespower -o $POOL -u $WALLET -t 4
screen -ls
sleep 4
clear
cd ..
screen -ls
./Timer_Bo.sh
