Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  #config.vm.box_version = "20191107.0.0"
  config.vm.network "forwarded_port", guest: 80, host: 8090
  config.vm.network "public_network", ip: "192.168.0.55"
  config.vm.provision "shell", path: "script.sh"
  config.vm.synced_folder "site/", "/var/www/html"
end

config.vm.provider "virtualbox" do |v|
  v.cpus: 2
  v.memory = 2048
end

config.vm.provision "ansible" do |ansible|
  ansible.playbook = "playbook.yml"
end
