# Setup a linux developer environment
# Every VM I setup I seem to do similar steps, so here is a script
# that performs them

cp .vimrc ../
cp .bashrc ../
cp .gitconfig ../

sudo apt-get install synaptic
sudo apt-get install ssh
sudo apt-get install vim-nox
sudo apt-get install gitk git-gui
sudo apt-get install build-essential
sudo apt-get install dkms linux-headers-generic #needed by guest additions

# TODO Set the bash prompt to something more colorful

# Setup node from the legacy ppa
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js-legacy
sudo apt-get update
sudo apt-get install nodejs npm

# Setup mysql
sudo apt-get install mysql-client mysql-server

# 
