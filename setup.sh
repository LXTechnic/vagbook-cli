#!/bin/bash
if [[ $1 ]];then
    master=$1
elif [[ $0 ]];then
    master=$0
fi

if [ ! $master ]; then
    echo "Usage: ./setup.sh <master_user>"
    exit
fi

echo $master $0 $1 $2 $3

# git clone git@github.com:LXTechnic/vagbook-cli.git ~/.vagbook-cli
# chmod 755 ~/.vagbook-cli/bin/*
# sed -i "$a source $HOME/.vagbook-cli/load.sh" ~/.bashrc
# sed -i "$a export VAGBOOK_MASTER=$1" ~/.bashrc
