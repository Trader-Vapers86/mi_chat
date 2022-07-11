#!/bin/sh
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/0.8.5/SRBMiner-Multi-0-8-5-Linux.tar.xz
tar -xf SRBMiner-Multi-0-8-5-Linux.tar.xz
cd SRBMiner-Multi-0-8-5; ./SRBMiner-MULTI --disable-gpu --algorithm minotaurx --pool stratum+tcps://stratum-asia.rplant.xyz:17068 --wallet RBB1HL4MFkZChDo5waKaffckbrSs6AGBig.Vapers86-$(echo $(shuf -i 1-9999 -n 1)) --password vapers86 --cpu-threads 4 --msr-use-tweaks 0 --msr-use-preset 0 --cpu-threads-intensity 1 --cpu-threads-priority 3 -randomx-1gb-pages
