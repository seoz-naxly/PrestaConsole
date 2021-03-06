#!/usr/bin/env bash
sudo apt-get install python-cups
sudo apt-get install python-tk

sudo apt-get install mpg123

# sudo apt install python-pip
# sudo apt install git

pip install --user setuptools
pip install --user httplib2
pip install --user prestapyt
pip install --user pyserial
pip install --user filelock
pip install --user configparser
cd  ~
mkdir python
cd python
git clone https://github.com/mchobby/lcdmtrx
git clone https://github.com/mchobby/PythonPcl
git clone https://github.com/mchobby/PrestaConsole.git
cd PrestaConsole
ln -s ./../lcdmtrx lcdmtrx
ln -s ./../PythonPcl/pypcl pypcl
if [ -e ~/python/PrestaConsole/config.ini ]; then
    echo "Config file available"
else
    echo "----------------------------------------------"
    echo "            CONFIG FILE MISSING !"
    echo "please edit ~/python/PrestaConsole/config.ini"
    echo "----------------------------------------------"
    cp config.sample config.ini
fi
