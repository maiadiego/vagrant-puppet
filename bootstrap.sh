#!/usr/bin/env bash
apt-get update
apt-get install software-properties-common -y
#apt-add-repository ppa:ansible/ansible -y
apt-get update
#Instalação no servidor
#apt install puppetmaster
#apt-get install -y puppet-agent puppetserver
#Instalação no agente
apt-get install -y puppetmaster
export PATH=/opt/puppetlabs/bin:$PATH
echo "export PATH=/opt/puppetlabs/bin:\$PATH" >> /etc/bash.bashrc

#if ! [ -L /var/www ]; then
#  rm -rf /var/www
#  ln -fs /vagrant /var/www
#fi
