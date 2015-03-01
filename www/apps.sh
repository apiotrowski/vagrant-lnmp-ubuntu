#!/bin/sh

echo "Update apt"
apt-get update

echo "Install extra apps:"
apt-get install vim htop curl git-core ftp unzip imagemagick colordiff gettext graphviz -y -q > /dev/null
