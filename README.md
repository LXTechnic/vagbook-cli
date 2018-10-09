# VagBook CLI

## Before you begin

### Install Ansible

Sample for Ubuntu:

```bash
sudo apt update
sudo apt install -y software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
```

### Create master user

You should create one or more master user support ssh key. Like this:

```bash
sudo useradd -m vagbook-dev
sudo useradd -m vagbook-test
```

### Checkout your vagbook

```bash
sudo -i -u vagbook-dev git clone git@your.git.repos/vagbook.git
sudo -i -u vagbook-test git clone git@your.git.repos/vagbook.git
```

### Enable sudoers permission

```bash
export CUSTOM_USER=user_name
echo "${CUSTOM_USER} ALL=(vagbook-dev) NOPASSWD:ALL" |sudo tee /etc/sudoers.d/vagbook-${CUSTOM_USER}
```

## Install