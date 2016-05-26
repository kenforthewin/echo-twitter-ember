#!/usr/bin/env bash

git clone https://github.com/kenforthewin/echo-twitter-ember.git
# update APT repositories before installing anything else
sudo apt-get update

# install g++ to compile stuff
sudo apt-get install -y g++

apt-get install -y curl

# retrieve nodesource stuff 0.12 to have a node.js version 0.12.7 installed
sudo curl -sL https://deb.nodesource.com/setup_0.12 | sudo sh

# install node.js the usual way (will also install npm this time)
sudo apt-get install -y nodejs

# let's get "node_modules" out of the synced folder
# mkdir /home/vagrant/node_modules
# cd /var/www/project
# ln -s /home/vagrant/node_modules/ node_modules

# install a node.js package locally in the project
npm install karma

# Install ember-cli and bower
npm install -g ember-cli bower

cd echo-twitter-ember

ember install ember-font-awesome
ember install ember-bootstrap

# Install watchman
# git clone https://github.com/facebook/watchman.git /opt/watchman
# cd /opt/watchman
# ./autogen.sh
# ./configure
# make
# make install

# Setting up Samba
# share=/samba/ember-workspace
# mkdir -p $share
# chmod -R 0755 $share
# chown -R vagrant:vagrant $share
#
# mv /etc/samba/smb.conf /etc/samba/smb.conf.bak
# mv /home/vagrant/smb.conf /etc/samba/smb.conf
#
# smb_password=vagrant
# (echo $smb_password; echo $smb_password) | smbpasswd -a vagrant
#
# service smbd restart
#
# # Setting up local workspace
# ln -s /samba/ember-workspace /home/vagrant/ember-workspace
# chown -h vagrant:vagrant /home/vagrant/ember-workspace
