# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.ssh.username = "vagrant"
  
  config.vm.define "web-dev" do |web|
    web.vm.hostname = "web-devbox"
    web.vm.network "forwarded_port", guest: 80, host: 8080
    web.vm.network "public_network"

    web.vm.provider "virtualbox" do |vb|
      vb.name = "web-devbox"
      vb.memory = 4096
    end
    
    web.vm.provision "dev", type: "shell", path: "provision/dev.sh"
    web.vm.provision "nvm", type: "shell", path: "provision/nvm.sh"
  end
end
