Vagrant.configure("2") do |config|
  config.vm.boot_timeout = 600 # Aumenta el tiempo de inicio a 10 minutos (600 segundos)

  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote = true
    config.vm.box_download_options = {"ssl-revoke-best-effort" => true}
  end

  # Configuración del servidorHaproxy
  config.vm.define :servidorHaproxy do |servidorHaproxy|
    servidorHaproxy.vm.box = "bento/ubuntu-22.04"
    servidorHaproxy.vm.network :private_network, ip: "192.168.100.5"
    servidorHaproxy.vm.hostname = "servidorHaproxy"
    servidorHaproxy.vm.provider "virtualbox" do |vb|
     end
    servidorHaproxy.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "site.pp" 
      puppet.module_path = "puppet/modules"
      servidorHaproxy.vm.provision "shell", inline: "sudo apt-get update && sudo apt-get install -y puppet"
    end
  end

  # Configuración del servidor1
  config.vm.define :servidor1 do |servidor1|
    servidor1.vm.box = "bento/ubuntu-22.04"
    servidor1.vm.network :private_network, ip: "192.168.100.6"
    servidor1.vm.hostname = "servidor1"
    servidor1.vm.provider "virtualbox" do |vb|
     end
    servidor1.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "site.pp" 
      puppet.module_path = "puppet/modules"
      servidor1.vm.provision "shell", inline: "sudo apt-get update && sudo apt-get install -y puppet"
    end
  end

  # Configuración del servidor2
  config.vm.define :servidor2 do |servidor2|
    servidor2.vm.box = "bento/ubuntu-22.04"
    servidor2.vm.network :private_network, ip: "192.168.100.7"
    servidor2.vm.hostname = "servidor2"
    servidor2.vm.provider "virtualbox" do |vb|
     end
    servidor2.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "site.pp" 
      puppet.module_path = "puppet/modules"
      servidor2.vm.provision "shell", inline: "sudo apt-get update && sudo apt-get install -y puppet"
    end
  end
end

