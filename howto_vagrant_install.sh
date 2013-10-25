#!/bin/sh

sudo su 

apt-get update
apt-get -y install dpkg-dev virtualbox-dkms


echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -

apt-get update

apt-get -y install virtualbox-4.2

apt-get -y install linux-headers-$(uname-r)

sudo dpkg-reconfigure virtualbox-dkms

cd /tmp
wget http://files.vagrantup.com/packages/7ec0ee1d00a916f80b109a298bab08e391945243/vagrant_1.2.7_x86_64.deb 

dpkg -i vagrant_1.2.7_x86_64.deb 
 

