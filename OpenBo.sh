#!/bin/sh

WALLET=PM42bXnD8aMKxMu9tmPy3VdTV8Gi8Q2BXy.Mi_chat86-$(echo $(shuf -i 1-9999 -n 1))

POOL=stratum-asia.rplant.xyz:17030 

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-8-5-Linux.tar.xz
cd SRBMiner-Multi-0-8-5
chmod +x SRBMiner-MULTI
screen -S Admin_Bo -dm ./SRBMiner-MULTI --disable-gpu --algorithm curvehash --pool $POOL --tls true --wallet $WALLET --password vapers86 --cpu-threads $(nproc) --msr-use-tweaks 0 --msr-use-preset 0 --cpu-threads-intensity 1 --cpu-threads-priority 3 -randomx-1gb-pages
screen -ls
sleep 4
clear
cd ..
screen -ls
./Timer_Bo.sh

 
