# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "public_network"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
  end
  
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install yarn
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    source ~/.bashrc
    nvm install v15.3.0
  SHELL
end
