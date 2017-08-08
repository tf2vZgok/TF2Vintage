#!/bin/sh
NPROC=$(nproc)
cd ../../../
./createallprojects
make -j$NPROC -f everything.mak client_tf
make -j$NPROC -f everything.mak client_tf
