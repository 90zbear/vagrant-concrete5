# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define :server do |server|
    server.vm.hostname = "server"
    server.vm.box = "ubuntu14"
    server.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    server.vm.network :forwarded_port, guest: 22, host: 2002, id: "ssh"
    server.vm.network :forwarded_port, guest: 80, host: 8000, id: "http"
    server.vm.network :private_network, ip: "192.168.33.12", virtualbox__intnet: "network"
    server.vm.synced_folder "./server", "/var/www/html", mount_options: ['dmode=777','fmode=666']
  end

  config.vm.define :ansible do |ansible|
    ansible.vm.hostname = "ansible"
    ansible.vm.box = "ubuntu14"
    ansible.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
    ansible.vm.network :forwarded_port, guest: 22, host: 2001, id: "ssh"
    ansible.vm.network :private_network, ip: "192.168.33.11", virtualbox__intnet: "network"
    ansible.vm.synced_folder "./ansible", "/home/vagrant/ansible", mount_options: ['dmode=777','fmode=666']
    ansible.vm.provision :shell, :path => "provision.sh"
  end

end
