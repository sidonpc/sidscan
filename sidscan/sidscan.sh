#!/bin/bash

#Welcome to my First Tool By Kylynn Rees

#Dependencies include nmap and bash. 


#LOGO
echo "░██████╗██╗██████╗░░██████╗░█████╗░░█████╗░███╗░░██╗"
echo "██╔════╝██║██╔══██╗██╔════╝██╔══██╗██╔══██╗████╗░██║"
echo "╚█████╗░██║██║░░██║╚█████╗░██║░░╚═╝███████║██╔██╗██║"
echo "░╚═══██╗██║██║░░██║░╚═══██╗██║░░██╗██╔══██║██║╚████║"
echo "██████╔╝██║██████╔╝██████╔╝╚█████╔╝██║░░██║██║░╚███║"
echo "╚═════╝░╚═╝╚═════╝░╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝░░╚══╝"
echo "_________________________________________By: Sidonpc"

# Option for IP or Subnet then if IP then runs appropriate
# nmap script and greps the results
read -p "What kind of scan $foo? IP or Subnet---☠---" answer
if [[ $answer = IP ]] ; then
	read -p "Whats the IP (p1-1000): " singleIP
		nmap -sS -Pn $singleIP | grep /tcp
fi

# This option will be used for the subnet option and grep the same.
if [[ $answer = Subnet ]] ; then 
	read -p "Whats the Subnet: " subnet
		nmap -sn $subnet | grep report | awk -F'Nmap scan report for ' '{print $2}'
fi

if [[ $answer = help ]] ; then
	echo "Type either 'IP' or 'Subnet'"
fi

#Thank you for using my tool 
#Simple Yes but it is my first!
