#! /usr/bash

VERSION=$1

if [ "$VERSION" = "" ]; then
        VERSION=1.17.9
fi

wget https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.gz
tar -zxf pcre-8.44.tar.gz
cd pcre-8.44
./configure
make
sudo make install
cd ..
rm -rf pcre-8.44
rm pcre-8.44.tar.gz

wget http://zlib.net/zlib-1.2.11.tar.gz
tar -zxf zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure
make
sudo make install
cd ..
rm -rf zlib-1.2.11
rm zlib-1.2.11.tar.gz

wget http://www.openssl.org/source/openssl-1.1.1g.tar.gz
tar -zxf openssl-1.1.1g.tar.gz
cd openssl-1.1.1g
./Configure darwin64-x86_64-cc --prefix=/usr
make
sudo make install
cd ..
rm -rf openssl-1.1.1g
rm openssl-1.1.1g.tar.gz

wget https://nginx.org/download/nginx-$VERSION.tar.gz
tar zxf nginx-$VERSION.tar.gz
cd nginx-$VERSION
./configure
make
sudo make install
cd ..
rm -rf nginx-$VERSION
rm nginx-$VERSION.tar.gz

sudo /usr/local/nginx/sbin/nginx

echo
echo ---------python-setup done---------
echo

