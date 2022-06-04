#!/bin/sh

name=$1
passwd=password

# check that the user does not exist already
if ! getent passwd $name > /dev/null; then
    # create the user with the group developers
    useradd -g developers $name -m -p $passwd 
fi

# check if the user has a home directory and if not, create it
if [ ! -d /home/$name ]; then
    mkdir /home/$name
fi

# check if the user has a .ssh directory and if not, create it
if [ ! -d /home/$name/.ssh ]; then
    mkdir /home/$name/.ssh
fi

# check if the user has a authorized_keys file and if not, create it
if [ ! -f /home/$name/.ssh/authorized_keys ]; then
    touch /home/$name/.ssh/authorized_keys
fi
