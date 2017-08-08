#!/bin/bash
export VALVEDIR=$PWD/devtools/valve
mkdir $VALVEDIR
cd $VALVEDIR
wget -nc http://media.steampowered.com/client/runtime/steam-runtime-sdk_latest.tar.xz
tar xf steam-runtime-sdk_latest.tar.xz
mv steam-runtime-sdk_2013-09-05 steam-runtime
cd steam-runtime
yes | ./setup.sh
./shell-i386.sh ../../compile_linux_client.sh
