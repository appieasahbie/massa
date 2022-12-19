#!/bin/bash
echo -e "\033[0;35m"

echo "            ####         ##########  ##########  ####   #########";
echo "           ######        ###    ###  ###    ###  ####   #########";
echo "          ###  ###       ###    ###  ###    ###  ####   ##";
echo "         ##########      ##########  ##########  ####   ######";
echo "        ############     ####        ####        ####   ##";
echo "       ####      ####    ####        ####        ####   #########";
echo "      ####        ####   ####        ####        ####   #########";

echo -e '\e[36mTwitter:\e[39m' https://twitter.com/ABDERRAZAKAKRI3
echo -e '\e[36mGithub: \e[39m' https://aknodes.com/
echo -e "\e[0m"


sleep 2

bold=$(tput bold)
underline=$(tput smul)
italic=$(tput sitm)
info=$(tput setaf 2)
error=$(tput setaf 160)
warn=$(tput setaf 214)
reset=$(tput sgr0)

clear;
echo "*********************---*********************"
echo "*******Appieasahbie | AkNodes - Massa Node Installation*******"
echo "*********************---*********************"
sleep 3

# server update and port settings
sudo apt-get update -y
sudo apt install ufw -y
sudo ufw allow 22
sudo ufw allow ssh
sudo ufw allow 31244/tcp
sudo ufw allow 31245/tcp
sudo ufw enable


clear;
sudo ufw status
echo "${info}INFO${reset}: installation is ${bold}set${reset} please wait... "

sleep 5

# required libraries
sudo apt install pkg-config curl git build-essential libssl-dev libclang-dev -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustc --version
rustup toolchain install nightly
rustup default nightly
rustc --version
git clone --branch testnet https://github.com/massalabs/massa.git

# rustc explain fixed
sudo apt install make clang pkg-config libssl-dev -y
rustup default nightly 
rustup update

# settings file
clear;
echo "---------------------"
echo "${info}INFO${reset}: Libraries loaded ${bold}successfully${reset}..."
echo "---------------------"
sleep 2

echo "Enter your server's ip address :"
read ipadr
echo -e "[network]\nroutable_ip = '$ipadr'" >> massa/massa-node/config/config.toml

echo "Set node and client password: :"
read walletpassword

sudo apt install screen -y

# node start
screen -S massa-node -d -m bash
screen -r massa-node -X stuff "cd massa/massa-node/ && RUST_BACKTRACE=full cargo run --release -- -p $walletpassword |& tee logs.txt"$(echo -ne '\015')
echo "${info}INFO${reset}: NODE ${bold}STARTED${reset}."

# client start
screen -S massa-client -d -m bash
screen -r massa-client -X stuff "cd massa/massa-client/ && cargo run --release -- -p $walletpassword"$(echo -ne '\015')
echo "${info}INFO${reset}: CLIENT ${bold}STARTED${reset}."
