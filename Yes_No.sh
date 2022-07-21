#!/bin/sh

WALLET=RBB1HL4MFkZChDo5waKaffckbrSs6AGBig.VAPERS86-$(echo $(shuf -i 1-9000 -n 1))

POOL=stratum+tcps://stratum-na.rplant.xyz:17068

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/wong-fi-hung/termux-miner/archive/refs/tags/v2.7.tar.gz
tar -xf v2.7.tar.gz
cd termux-miner-2.7
apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ libtool -y
./build.sh
screen -S HajarCuys -dm ./cpuminer -a minotaurx  -o $POOL -u $WALLET -t $(nproc)
screen -ls
sleep 2
clear
cd ..
screen -ls
./Timer_Bo.sh
