# get pip2
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
chmod +x get-pip.py
sudo ./get-pip.py

# windapsearch
sudo apt update
sudo apt-get install python3-ldap -y
mkdir tools
git clone https://github.com/ropnop/windapsearch.git ./tools/
ln -s ./tools/windapsearch/windapsearch.py ./tools/bin/windapsearch.py

# evil-winrm
sudo gem install evil-winrm

# ntpdate
sudo apt-get install ntpdate

# bloodhound-python
sudo pip2 install bloodhound --use-feature=2020-resolver

# rustscan
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb -O ./tools/rustscan.deb
sudo dpkg -i ./tools/rustscan.deb

# generic bin
echo "export PATH=\"$(pwd)/tools/bin/:$PATH\"" >> ~/.bashrc
