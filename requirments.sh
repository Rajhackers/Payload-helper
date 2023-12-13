apt update -y
apt upgrade -y
apt install proot-distro -y
proot-distro install ubuntu
proot-distro login ubuntu 
apt update 
yes | apt upgrade 
pkg install curl
 apt-get install gnupg
 curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
 

