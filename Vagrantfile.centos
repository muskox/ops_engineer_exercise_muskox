# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210-nocm.box"
  config.vm.box = "centos-min"

  config.vm.synced_folder "roots/", "/srv/"

  config.vm.provision :salt do |s|
    s.minion_config = "salt/minion"
    s.verbose = true
    s.run_highstate = true
  end

end
