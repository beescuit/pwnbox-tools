# base folders
mkdir tools
mkdir tools/bin

# get pip2
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
chmod +x get-pip.py
sudo ./get-pip.py

# windapsearch
sudo apt update
sudo apt-get install python3-ldap -y
git clone https://github.com/ropnop/windapsearch.git ./tools/windapsearch
ln -s $(pwd)/tools/windapsearch/windapsearch.py ./tools/bin/windapsearch.py

# evil-winrm
sudo gem install evil-winrm

# ntpdate
sudo apt-get install ntpdate -y

# bloodhound-python
sudo pip2 install bloodhound --use-feature=2020-resolver

# rustscan
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb -O ./tools/rustscan.deb
sudo dpkg -i ./tools/rustscan.deb

# kerbrute
wget https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64 -O ./tools/bin/kerbrute

# exiftool
sudo apt install exiftool -y

# rlwrap
sudo apt install rlwrap -y

# gdb
sudo apt install gdb -y

# pwndbg
git clone https://github.com/pwndbg/pwndbg ./tools/pwndbg
cd ./tools/pwndbg
./setup.sh
cd ../../

# generic bin
echo "export PATH=\"$(pwd)/tools/bin/:$PATH\"" >> ~/.bashrc
