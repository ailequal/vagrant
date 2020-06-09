################
# bootstrap.sh #
################


# general setup commands #
##########################

# all commands are executed as root automatically

# dpkg-preconfigure: unable to re-open stdin
export DEBIAN_FRONTEND=noninteractive

# update os && upgrade os
apt-get -y update && apt-get -y upgrade

# apt packages
apt-get -y install \
  git \
  htop \
  tree \
  neofetch \
	vim


# lamp stack setup #
####################

# install apache
apt-get -y install apache2

# enable apache mod_rewrite
a2enmod rewrite

# restart apache
systemctl restart apache2

# install php
apt-get -y install php

# install php apache mod
apt-get -y install libapache2-mod-php7.2

# php extra mods
apt-get -y install php7.2-common
apt-get -y install php7.2-zip

# install composer
apt-get install Composer

# restart apache
service apache2 restart

# set mysql password
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# install mysql
apt-get -y install mysql-server

# php-mysql lib
apt-get -y install php7.2-mysql

# restart apache
service apache2 restart

# install phpmyadmin
# apt-get install phpmyadmin php-mbstring php-gettext

# install nodejs
# command here

# set local timezone
# sudo dpkg-reconfigure tzdata


# wordpress setup #
###################

# install wp-cli
# command here

# install wordpress
# command here
