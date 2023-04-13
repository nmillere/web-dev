#!/usr/bin/env bash
# Install/configure various dev tools

set -e
apt-get install -y git git-completion zip unzip

# Git aliases
cat /vagrant/provision/files/gitconfig.txt >> /home/vagrant/.gitconfig

# Git completion
cat /vagrant/provision/files/gitcompletion.txt >> /home/vagrant/.bashrc

# Enjoyable mob programming with https://mob.sh
curl -sL install.mob.sh | sh -s - --user

# Set up working dir, workspace
mkdir /home/vagrant/dev
cat /vagrant/provision/files/workspace.txt >> /home/vagrant/web-dev.code-workspace
