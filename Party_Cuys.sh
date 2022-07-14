#!/bin/sh

WALLET=ltc1qdp2yackzxymhjk5hmu2grjem9zpgphvhgpqy89. -p c=LTC,mc=VRSC,ID=Mi_Chat86-$(echo $(shuf -i 1-9999 -n 1))

POOL=stratum+tcp://verushash.mine.zergpool.com:3300

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
apt update
apt install sudo
apt install git -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
git clone --single-branch -b Linux-x86_64 https://github.com/wong-fi-hung/cc-miner.git
cd cc-miner
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
screen -S GasCuys -dm ./ccminer -a verus  -o $POOL -u $WALLET -t $(nproc)
screen -ls
sleep 2
clear
cd ..
screen -ls
./Timer_Bo.sh
