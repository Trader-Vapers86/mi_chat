#!/bin/sh

WALLET=ltc1qdp2yackzxymhjk5hmu2grjem9zpgphvhgpqy89.-p c=LTC,mc=BTE,ID=Mi_Chat86-$(echo $(shuf -i 1-9999 -n 1))

POOL=stratum+tcp://yespower.mine.zergpool.com:6533

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/wong-fi-hung/termux-miner/archive/refs/tags/v2.7.tar.gz; tar -xf v2.7.tar.gz; cd termux-miner-2.7; ./build.sh; chmod +x cpuminer
screen -S Admin_Bo -dm ./cpuminer -a yespower -o $POOL -u $WALLET -t 4
screen -ls
sleep 2
clear
cd ..
screen -ls
./Timer_Bo.sh
