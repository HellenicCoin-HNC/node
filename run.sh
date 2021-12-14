#!/bin/bash
  
cp /usr/raw.conf .
rawFileName='raw.conf'

if [[ -z "$NET_MODE" || $NET_MODE == 'main' ]]; then
    echo "empty or main"
    echo "testnet= 0" >> $rawFileName
    echo "addnode= 178.62.227.227" >> $rawFileName
    echo "addnode= 192.241.134.112" >> $rawFileName
    echo "addnode= 165.22.231.191"  >> $rawFileName
else
    echo "testnet= 0" >> $rawFileName
    echo "addnode= 188.166.82.148" >> $rawFileName
fi

mv rawFileName /helleniccoin/.helleniccoin/helleniccoin.conf

helleniccoind
