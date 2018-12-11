#!/usr/bin/env bash
apt-get update
apt-get install software-properties-common -y
#Alterando o arquivo hosts
echo 127.0.0.1 localhost > /etc/hosts
echo 127.0.0.1 puppet-srv01.local puppet-srv01 >> /etc/hosts
echo 192.168.200.100 puppet-srv01.local puppet-srv01 >> /etc/hosts
# Adicionando o repositório da PuppetLabs
wget http://apt.puppetlabs.com/puppet6-release-bionic.deb
dpkg -i puppet6-release-bionic.deb
apt-get update
#Instalando o Puppet
apt-get install -y puppet-agent puppetserver
export PATH=/opt/puppetlabs/bin:$PATH
echo "export PATH=/opt/puppetlabs/bin:\$PATH" >> /etc/bash.bashrc
#Movendo a pasta Puppet
#if ! [ -L /etc/puppetlabs ]; then
rm -rf /etc/puppetlabs
ln -fs /vagrant/puppetlabs /etc
#fi
