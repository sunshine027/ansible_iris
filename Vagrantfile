# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "opensuse-13.1"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "base.yml"
    ansible.groups = {
      "iris-dbserver" => ["default"],
      "iris-webservers" => ["default"],
    }
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "site.yml"
    ansible.groups = {
      "iris-dbserver" => ["default"],
      "iris-webservers" => ["default"],
    }
  end

  config.vm.network "forwarded_port", guest: 8000, host: 8000

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
end
