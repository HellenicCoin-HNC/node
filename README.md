Node installation step by step 

Use Ubuntu 18.04 LTS 64bit. ( minimum 2 cpu 4GB ram) 

Update your Ubuntu machine. 

sudo apt-get update 

sudo apt-get upgrade 

Install the required dependencies. 

sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev libboost-all-dev libboost-program-options-dev 

sudo apt-get install libminiupnpc-dev libzmq3-dev libprotobuf-dev protobuf-compiler unzip software-properties-common 

Install Berkeley DB. 

sudo add-apt-repository ppa:bitcoin/bitcoin 

sudo apt-get update 

sudo apt-get install libdb4.8-dev libdb4.8++-dev 

Download the linux daemon and tools 

wget "https://github.com/HellenicCoin-HNC/node/raw/main/helleniccoin-daemon-linux.tar.gz" -O helleniccoin-daemon-linux.tar.gz 

wget "https://github.com/HellenicCoin-HNC/node/raw/main/helleniccoin-qt-linux.tar.gz" -O helleniccoin-qt-linux.tar.gz 

Extract the tar file. 

tar -xzvf helleniccoin-daemon-linux.tar.gz 

tar -xzvf helleniccoin-qt-linux.tar.gz 

Install the daemon. 

sudo mv helleniccoind helleniccoin-cli helleniccoin-tx /usr/bin/ 

Create the config file. 

mkdir $HOME/.helleniccoin 

nano $HOME/.helleniccoin/helleniccoin.conf 

Paste the following lines in helleniccoin.conf. 

rpcuser=rpc_helleniccoin 

rpcpassword=a-very-strong-password 

rpcallowip=127.0.0.1 

rpcport=21351 

tcpport=21352 

listen=1 

server=1 

txindex=1 

daemon=1 

addnode= 178.62.227.227 

addnode= 192.241.134.112 

addnode= 165.22.231.191 

maxconnections=64 

Start your node with the following command. 

helleniccoind 
