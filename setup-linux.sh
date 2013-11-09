#!/bin/bash

# Setup a linux developer environment
# Every VM I setup I seem to do similar steps, so here is a script
# that performs them

DOTFILES_ROOT="`pwd`"

install_dotfiles () {
    echo 'installing dotfiles'

    for source in `find $DOTFILES_ROOT -name \*.symlink`
    do
        dest="$HOME/.`basename \"${source%.*}\"`"

        if [ -f $dest ] || [ -d $dest ]
        then
            mv $dest $dest\.backup
            echo "moved $dest to $dest.backup"
        fi

        ln -s $source $dest
    done
}

install_packages () {
    sudo apt-get install synaptic
    sudo apt-get install ssh
    sudo apt-get install vim-nox
    sudo apt-get install gitk git-gui
    sudo apt-get install build-essential
    sudo apt-get install dkms linux-headers-generic #needed by guest additions

    # remove LibreOffice packages
    # (these take up a lot of space and are not needed in a developer
    # environment)
    sudo apt-get remove --purge libreoffice*
    sudo apt-get clean
    sudo apt-get autoremove

    # Install system load indicator (useful only on Ubuntu desktop)
    sudo apt-get install indicator-multiload

    # TODO Set the bash prompt to something more colorful

    # Setup node from the legacy ppa
    sudo apt-get install python-software-properties
    sudo add-apt-repository ppa:chris-lea/node.js-legacy
    sudo apt-get update
    sudo apt-get install nodejs npm

    # Setup mysql
    sudo apt-get install mysql-client mysql-server
}

install_dotfiles
