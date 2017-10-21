Vagrant.configure("2") do |config|

  # config.vm.box = "debian/stretch64"
  
  config.ssh.private_key_path = File.expand_path("../private_key", __FILE__)

  config.vm.define "debian9-devserver" do |t|
  end

  config.vm.network "private_network", type: "dhcp"

  # config.vm.synced_folder "/home/andrey/Develope/ansible-deb/srv", "/srv", owner: "www-data", group: "www-data", create: true

  # config.vm.provider "virtualbox" do |vb|
	#   vb.name = "debian-server"
  # end
end
