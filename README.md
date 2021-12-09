Here is presented node installation guide

Before node installation there should be a machine requiriments are `Ubuntu 18.04 LTS 64bit. ( minimum 2 cpu 4GB ram)`

Run the code snippet to install node dependenci libraries
```
  wget https://raw.githubusercontent.com/HellenicCoin-HNC/node/main/install-dependencies.sh
  chmod +x install-dependencies.sh
  ./install-dependencies.sh
```

Download and extract nodes
```
  wget "https://github.com/HellenicCoin-HNC/node/raw/main/helleniccoin-daemon-linux.tar.gz" -O helleniccoin-daemon-linux.tar.gz 
  wget "https://github.com/HellenicCoin-HNC/node/raw/main/helleniccoin-qt-linux.tar.gz" -O helleniccoin-qt-linux.tar.gz 
  tar -xzvf helleniccoin-daemon-linux.tar.gz 
  tar -xzvf helleniccoin-qt-linux.tar.gz 
  sudo mv helleniccoind helleniccoin-cli helleniccoin-tx /usr/bin/ 
```

Create the config file. 
```
  mkdir $HOME/.helleniccoin 
  wget https://raw.githubusercontent.com/HellenicCoin-HNC/node/main/helleniccoin.conf
  mv helleniccoin.conf $HOME/.helleniccoin/
```
Start your node with the following command. 
`helleniccoind`
