# Vagrant

Sample provisioning scripts from our [Vagrant course](http://codersuniversity.com/courses/vagrant?utm_campaign=github&utm_medium=social&utm_source=github).

This repo has some sample scripts to use whilst learning how to use Vagrant.

The *Vagrantfile* below will work with all the examples (just change the shell script path).

```ruby
Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "setup.sh"
  config.vm.network :forwarded_port, guest: 80, host: 8080
end
```

## LAMP

This script will setup a simple Apache/MySQL/PHP enironment.

File: [lamp.sh](lamp.sh)


## Node JS

This script will install the Node Version Manager (nvm) then let you choose a version of Node JS to install (this example installs 0.12).

File: [node.sh](node.sh)

## Ruby

This script will install the Ruby Version Manager (rvm) then let you choose a version of Ruby to install (this example installs 1.9.3).

File: [ruby.sh](ruby.sh)

## Python

This script will install Python 3 via APT.

File: [python.sh](python.sh)