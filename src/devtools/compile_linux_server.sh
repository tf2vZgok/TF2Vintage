#!/bin/bash
NPROC=$(nproc)
cd ../../../
./createallprojects
make -j$NPROC -f everything.mak server_tf
make -j$NPROC -f everything.mak server_tf
