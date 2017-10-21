Local configuration
file: **ansible.cfg**

```
ansible-playbook playbook.yaml
```
This create file **etc.hosts** that contains hosts to merge with /etc/hosts


# Build box:
```
vagrant package --base debian --output debian-server.box --include configs/vagrant-debian-root,configs/vagrant-debian-root.pub,private_key --vagrantfile Vagrantfile
```

- --base debian - base machine
- --output debian-server.box - result file name
- --include
	- configs/vagrant-debian-root - ssh private key for root
	- configs/vagrant-debian-root.pub - ssh public key for root
	- private_key - ssh private key for user vagrant
- --vagrantfile Vagrantfile - configs

**private_key unpacked to ~/.vagrant.d/boxes/debian-server/0/virtualbox/include/**
because (Vagrantfile):
```
config.ssh.private_key_path = File.expand_path("../private_key", __FILE__)
```

# TODO:
- Add versioning to box