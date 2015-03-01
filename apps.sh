#!/bin/sh

echo "Update apt"
apt-get update

echo "Install extra apps:"
apt-get install vim htop curl unzip imagemagick -q -y > /dev/null
