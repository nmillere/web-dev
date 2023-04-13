#!/usr/bin/env bash
# Install/configure various dev tools

set -e
yes | curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt-get -y update
apt -y remove cmdtest
apt-get -y install yarn

# https://github.com/nvm-sh/nvm
yes | curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
