#!/bin/bash
master=0
if [[ $0 ]];then
    master=$0
elif [[ $1 ]];then
    master=$1
fi

if [[ $master -eq 0 ]];then
    echo "Usage: ./setup.sh <master_user>"
    exit
fi

git clone git@github.com:LXTechnic/vagbook-cli.git ~/.vagbook-cli
chmod 755 ~/.vagbook-cli/bin/*
sed -i "$a source $HOME/.vagbook-cli/load.sh" ~/.bashrc
sed -i "$a export VAGBOOK_MASTER=$1" ~/.bashrc
