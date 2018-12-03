Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  #config.vm.network "forwarded_port", guest: 80, host: 8080
  #config.vm.network "private_network", ip: "10.10.1.1"
  #config.vm.network "private_network", type: "dhcp"
  #config.vm.network "public_network"
  config.vm.network "public_network", ip: "192.168.101.1"
  config.vm.network :private_network, ip: "172.16.30.1"
  config.vm.define "puppet-srv01"
  config.vm.hostname = "puppet-srv01.local"
  config.vm.provision :shell, path: "bootstrap.sh"
end
