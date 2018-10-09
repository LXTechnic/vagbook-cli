#!/bin/bash
if [[ $1 ]];then
    master=$1
elif [[ $0 ]];then
    master=$0
fi

if [[ ! $master ]] || [[ $master == "bash" ]] || [[ $master == "./setup.sh" ]] || [[ $master == "setup.sh" ]]; then
    echo "Usage: ./setup.sh <master_user>"
    exit
fi

rm -rf ~/.vagbook-cli
git clone git@github.com:LXTechnic/vagbook-cli.git ~/.vagbook-cli
chmod 755 ~/.vagbook-cli/bin/*
echo "source $HOME/.vagbook-cli/load.sh" |sudo tee -a $HOME/.bashrc
echo "export VAGBOOK_MASTER=$master" |sudo tee -a $HOME/.bashrc
