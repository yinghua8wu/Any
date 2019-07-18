#!/bin/bash

echo -e "\033[32m正在下载安装gcc\033[0m"
wget http://ftp.gnu.org/gnu/gcc/gcc-5.1.0/gcc-5.1.0.tar.gz
tar -xvzf gcc-5.1.0.tar.gz
cd gcc-5.1.0
sudo ./contrib/download_prerequisites
sudo ./configure
sudo make && make install
cd ..
sudo rm -rf gcc-5.1.0*

echo -e "\033[32m正在下载安装cmake\033[0m"
wget https://cmake.org/files/v3.1/cmake-3.1.0.tar.gz
tar -xvzf cmake-3.1.0.tar.gz
cd cmake-3.1.0
sudo ./configure
sudo make && make install
cd ..
sudo rm -rf cmake-3.1.0*

echo -e "\033[32m正在下载安装libevent\033[0m"
wget https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
tar -xvzf libevent-2.1.8-stable.tar.gz
cd libevent-2.1.8-stable
sudo ./configure
sudo make && make install
cd ..
sudo rm -rf libevent-2.1.8-stable*

echo -e "\033[32m正在下载安装libsodium\033[0m"
wget https://github.com/jedisct1/libsodium/releases/download/1.0.16/libsodium-1.0.16.tar.gz
tar -xvzf libsodium-1.0.16.tar.gz
cd libsodium-1.0.16
sudo ./configure
sudo make && make check
sudo make install
cd ..
sudo rm -rf libsodium-1.0.16*
