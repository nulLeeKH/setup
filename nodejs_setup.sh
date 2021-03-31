sudo wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

nvm install v10.15.1
nvm use v10.15.1
. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc

npm cache clean --force
npm install -g n
sudo n stable
. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc

npm install -g npm

echo
echo ---------nodejs-setup done---------
echo

