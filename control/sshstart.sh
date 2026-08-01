#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' 

anadizin=$(pwd)


while true
do

clear

echo -e "${GREEN}"

cat << EOF

 ▄███████▄   ▄███████▄   ▄██   ██▄ 
████▀ ▀████ ████▀ ▀████ ████   ████
▀█████▄▄    ▀█████▄▄    ███████████
   ▀▀█████▄    ▀▀█████▄ ████▀▀▀████
████▄ ▄████ ████▄ ▄████ ████   ████
 ▀███████▀   ▀███████▀   ▀██   ██▀ 


@shadowxy
EOF

echo -e "${NC}"

echo ""
echo "1) Start SSH Server"
echo ""
echo "2) Stop SSH Server"
echo ""
echo "3) SSH Logs"
echo ""
echo "4) Connect SSH Server "
echo ""
echo "5) SSH Options"
echo ""
echo ""
echo "6) Dowland SSH Server Files"
echo ""



read -p "Choose : " secim

if [[ "$secim" == "1" ]]; then

 clear

echo "Starting SSH server"

 sudo systemctl start ssh > /dev/null 2>&1 

echo "Started !"

read -p "Enter..."

continue



elif [[ "$secim" == "2" ]]; then

 clear

echo "Stopping SSH server"

 sudo systemctl stop ssh > /dev/null 2>&1 &

 clear

echo "Server Stoped !"
 
read -p "Enter..."

continue

elif [[ "$secim" == "3" ]]; then

 clear

echo "Server Logs !"
echo ""
echo ""

 sudo systemctl status ssh > "$anadizin/sshlogs.txt"

echo "Logs saved "sshlogs.txt" "
echo ""

read -p "Enter..."
 continue


elif [[ "$secim" == "4" ]]; then

 clear

read -p "Enter the name of the device you want to connect to : " name

 clear

read -p "Enter the IP address of the device you want to connect to : " ip

 clear

  ssh "$name"@"$ip" 

elif [[ "$secim" == "5" ]]; then

while true
do

clear

echo -e "${GREEN}"
cat << EOF
 ▄███████▄   ▄███████▄   ▄██   ██▄ 
████▀ ▀████ ████▀ ▀████ ████   ████
▀█████▄▄    ▀█████▄▄    ███████████
   ▀▀█████▄    ▀▀█████▄ ████▀▀▀████
████▄ ▄████ ████▄ ▄████ ████   ████
 ▀███████▀   ▀███████▀   ▀██   ██▀ 
EOF
echo -e "${NC}"

echo ""
echo "1) Automatically started SSH server"
echo "2) Turn off automatic startup"
echo ""
echo "3) Whatsmy local adress and name"
echo ""
echo "4) Menu"
echo ""

read -p "Choose : " secim2

if [[ "$secim2" == "1" ]]; then

clear

echo "Starting up"

 sudo systemctl enable ssh > /dev/null 2>&1 &

 clear

echo -e "${GREEN}You are being redirected to the successful menu.${NC}"

 sleep 2
 continue

elif [[ "$secim2" == "2" ]]; then

echo "Closing"

 sudo systemctl disable ssh > /dev/null 2>&1 &

 clear

echo -e "${GREEN}You are being redirected to the successful menu.${NC}"

 sleep 2
 continue

elif [[ "$secim2" == "3" ]]; then

 clear

 echo "Your local ip adress : "
 hostname -I 

 echo ""

 echo "Your localname : "
 whoami

 echo ""

 echo "Your puplic ip adress : "

 curl "http://ip-api.com/"
 

echo ""
read -p "Enter..."

elif [[ "$secim2" == "4" ]]; then
break

else

 clear
 echo -e "${RED} Please make a different selection. ${NC}"
 sleep 2
 continue

fi  
done  

elif [[ "$secim" == "6" ]]; then

 clear

echo "Required data is being downloaded." 

{ sudo apt update && sudo apt upgrade -y; } > /dev/null 2>&1 

{ sudo apt install openssh-server; } > /dev/null 2>&1 

 clear

echo "Everything is ready." 

sleep 2

continue


else

 clear
 echo -e "${RED} Please make a different selection. ${NC}"
 sleep 2
 continue

fi  
done  
