#!/usr/bin/env bash

#Set password for MySQL
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

#Install our programs
sudo apt-get install apache2 -y
sudo apt-get install php5 -y
sudo apt-get install libapache2-mod-php5 -y
sudo apt-get install mysql-server -y
sudo apt-get install libapache2-mod-auth-mysql php5-mysql -y

#Make apache serve our local files by default
if ! [ -L /var/www/html ]; then
  sudo rm -rf /var/www/html
  sudo ln -fs /vagrant /var/www/html
fi

#Restart apache with our changes
sudo /etc/init.d/apache2 restart
