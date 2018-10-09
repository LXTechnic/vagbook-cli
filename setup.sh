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
git clone https://github.com/LXTechnic/vagbook-cli.git ~/.vagbook-cli
chmod 755 ~/.vagbook-cli/bin/*
if [[ -d $HOME/.zshrc ]];then
    echo "source $HOME/.vagbook-cli/load.sh" |tee -a $HOME/.zshrc
    echo "export VAGBOOK_MASTER=$master" |tee -a $HOME/.zshrc
else
    echo "source $HOME/.vagbook-cli/load.sh" |tee -a $HOME/.bashrc
    echo "export VAGBOOK_MASTER=$master" |tee -a $HOME/.bashrc
fi
source $HOME/.vagbook-cli/load.sh
export VAGBOOK_MASTER=$master