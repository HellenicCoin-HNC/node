#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install build-essential \
                     libtool autotools-dev \
                     automake pkg-config \
                     libssl-dev libevent-dev \
                     bsdmainutils python3 
                     libboost-system-dev libboost-filesystem-dev \
                     libboost-chrono-dev libboost-test-dev \
                     libboost-thread-dev libboost-all-dev \
                     libboost-program-options-dev

sudo apt-get install libminiupnpc-dev libzmq3-dev libprotobuf-dev protobuf-compiler unzip software-properties-common

sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev
