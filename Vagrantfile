# -*- mode: ruby -*-
# vi: set ft=ruby :
vms = {
'multicloud-client' => {'memory' => '1024', 'cpus' => '1', 'ip' => '200', 'box' => 'ubuntu/focal64', 'provision' => 'multicloud-client.sh'}
}

Vagrant.configure('2') do |config|
  vms.each do |name, conf|
     config.vm.define "#{name}" do |my|
       my.vm.box = conf['box']
       my.vm.hostname = "#{name}.4labs.example"
       my.vm.network 'private_network', ip: "172.16.0.#{conf['ip']}"
       my.vm.provision 'shell', path: "provision/#{conf['provision']}"
       my.vm.provider 'virtualbox' do |vb|
          vb.memory = conf['memory']
          vb.cpus = conf['cpus']
       end
     end
  end
end

