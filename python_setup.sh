#! /usr/bash

VERSION=$1

if [ "$VERSION" = "" ]; then
        VERSION=3.7.6
fi

sudo apt update

sudo apt install make gcc -y

sudo apt install curl libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi6 libffi-dev libncurses5-dev libreadline-dev libgdm-dev libdb4o-cil-dev libpcap-dev -y
wget https://www.python.org/ftp/python/$VERSION/Python-$VERSION.tgz
tar xvfz Python-$VERSION.tgz
sudo rm Python-$VERSION.tgz
cd Python-$VERSION
./configure LDFLAGES='-L/opt/local/lib -R/opt/local/lib'
sudo make
sudo make install
cd ..
sudo rm -rf Python-$VERSION

curl https://bootstrap.pypa.io/get-pip.py | sudo python3
sudo echo "alias pip3='pip3 --trusted-host pypi.org --trusted-host files.pythonhosted.org'" >> ~/.bashrc
source ~/.bashrc
sudo pip3 install --upgrade pip

python3 --version
pip3 --version

echo
echo ---------python-setup done---------
echo
