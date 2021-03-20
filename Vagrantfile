Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
  config.vm.box_version = "9.9.0"
  config.vm.box_check_update = false
  config.vm.hostname = "SAMSON"
  config.vm.network "private_network", ip: "192.168.50.1"
  config.vm.network  "forwarded_port", guest: 80, host: 80
  config.vm.network  "forwarded_port", guest: 8888, host: 8888
  config.vm.provider "virtualbox" do |vb|
     vb.cpus = "2"
     vb.memory = "2048"
   end	
   
  #config.vm.provision :shell, path: "script.sh"
  #config.vm.provision :shell, path: "update.sh"
  config.vm.provision :shell, path: "3second.sh"
  
  
   
end
