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
sudo useradd -m vbm-dev
sudo useradd -m vbm-test
```

### Checkout your vagbook

```bash
sudo -i -u vbm-dev git clone git@your.git.repos/vagbook.git
sudo -i -u vbm-test git clone git@your.git.repos/vagbook.git
```

### Enable sudoers permission

You need choose a master user.

```bash
export CUSTOM_USER=user_name
echo "${CUSTOM_USER} ALL=(vbm-dev) NOPASSWD:ALL" |sudo tee /etc/sudoers.d/vagbook-${CUSTOM_USER}
```

## Install

Example master user is vbm-dev.

via curl

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/LXTechnic/vagbook-cli/master/setup.sh)" vbm-dev
```

You should relogin shell to apply env vars.

## Usage

### Update vagbook

```bash
vb-up
```

### List vagbook commands

```bash
vbc
```

### Check playbook

```bash
vbc <env> <command> --check
```

### Play vagbook

```bash
vbc <env> <command>
```
