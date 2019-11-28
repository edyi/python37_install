#!/bin/bash
cd /usr/local/src/
yum install -y https://centos7.iuscommunity.org/ius-release.rpm
yum install -y zlib-devel libffi-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel libuuid-devel xz-devel
curl -s -O https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar xf Python-3.7.3.tgz && dd Python-3.7.3
./configure && make && make altinstall

ln -s /usr/local/bin/python3.7 /usr/bin/python3

yum install -y python36u-pip

echo "-------------"
which python3.7
echo "-------------"
python3 --version
echo "-------------"
pip3 --version
echo "-------------"
