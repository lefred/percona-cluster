Vagrant.configure("2") do |config|
  config.vm.define :percona1 do |percona1_config|
        percona1_config.vm.box = "centos64"
        percona1_config.vm.hostname = "percona1"
        percona1_config.ssh.max_tries = 100
        #percona1_config.vm.boot_mode = :gui
        percona1_config.vm.provider :virtualbox do |percona1_vb|
                percona1_vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50", "--memory", "1024", "--ioapic", "on", "--cpus", "2"]
        end
        percona1_config.vm.network :private_network, ip: "192.168.90.2"
        percona1_config.vm.provision :puppet do |percona1_puppet|
                percona1_puppet.pp_path = "/tmp/vagrant-puppet"
                percona1_puppet.manifests_path = "manifests"
                percona1_puppet.module_path = "modules"
                percona1_puppet.manifest_file = "site.pp"
                percona1_puppet.options = "--verbose"
        end
  end
  config.vm.define :percona2 do |percona2_config|
        percona2_config.vm.box = "centos64"
        percona2_config.vm.hostname = "percona2"
        percona2_config.ssh.max_tries = 100
        #percona1_config.vm.boot_mode = :gui
        percona2_config.vm.provider :virtualbox do |percona2_vb|
                percona2_vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50", "--memory", "1024", "--ioapic", "on"]
        end
        percona2_config.vm.network :private_network, ip: "192.168.90.3"
        percona2_config.vm.provision :puppet do |percona2_puppet|
                percona2_puppet.pp_path = "/tmp/vagrant-puppet"
                percona2_puppet.manifests_path = "manifests"
                percona2_puppet.module_path = "modules"
                percona2_puppet.manifest_file = "site.pp"
                percona2_puppet.options = "--verbose"
        end
  end
  config.vm.define :percona3 do |percona3_config|
        percona3_config.vm.box = "centos64"
        percona3_config.vm.hostname = "percona3"
        percona3_config.ssh.max_tries = 100
        #percona1_config.vm.boot_mode = :gui
        percona3_config.vm.provider :virtualbox do |percona3_vb|
                percona3_vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50", "--memory", "1024", "--ioapic", "on"]
        end
        percona3_config.vm.network :private_network, ip: "192.168.90.4"
        percona3_config.vm.provision :puppet do |percona3_puppet|
                percona3_puppet.pp_path = "/tmp/vagrant-puppet"
                percona3_puppet.manifests_path = "manifests"
                percona3_puppet.module_path = "modules"
                percona3_puppet.manifest_file = "site.pp"
                percona3_puppet.options = "--verbose"
        end
  end
end

