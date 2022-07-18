#!/bin/bash

welcome(){
    echo "Welcome to my script, this script installs and uninstalls my key"
    echo "THIS ONLY AFFECTS THE LOGGED IN USER"
}

break(){
    echo ""
    echo ""
}

options(){
    echo "Select one of the following options"
    echo ""
    echo "1| Install Key"
    echo "2| Delete Key"
    read option
}

installkey(){
    cd
    mkdir -p .ssh
    if grep -q "SHA256:15tFVS77HOXeQq/ClhF6qbCBTOypctocMOhJJbIt9yM josh severo@LAPTOP-4L1IE86R" ".ssh/authorized_keys" -s; then
    echo "ERROR: Key has already been installed"
    else
    echo "SHA256:15tFVS77HOXeQq/ClhF6qbCBTOypctocMOhJJbIt9yM josh severo@LAPTOP-4L1IE86R" >> ~/.ssh/authorized_keys
    echo "The key has been installed"
    fi
}

removekey(){
    cd 
    mkdir -p .ssh
    if grep -q "SHA256:15tFVS77HOXeQq/ClhF6qbCBTOypctocMOhJJbIt9yM josh severo@LAPTOP-4L1IE86R" ".ssh/authorized_keys" -s; then
    sed -if '/josh severo@LAPTOP-4L1IE86R/d' .ssh/authorized_keys
    echo "Key successfully removed"
    else
    echo "ERROR: Key not installed"
    fi
}

welcome
break
options
case $option in
    1) installkey
    ;;
    2) removekey
    ;;
    *) echo "Your selection is invalid"
    options
esac
