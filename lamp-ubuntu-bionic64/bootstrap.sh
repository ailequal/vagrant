################
# bootstrap.sh #
################


# dpkg-preconfigure: unable to re-open stdin
export DEBIAN_FRONTEND=noninteractive

# Update packages
apt-get update

# Upgrade packages
apt-get upgrade -y

# Install git
apt-get install -y git

# Install htop
apt-get install -y htop

# Install tree
apt-get install -y tree

# Install neofetch
apt-get install -y neofetch

# Install Apache
# apt-get install -y apache2

# Enable Apache Mod_Rewrite
# a2enmod rewrite

# Install PHP 7.2
# apt-get install -y php

# Install PHP Mods
# apt-get install -y php7.2-common
# apt-get install -y php7.2-zip
# apt-get install -y libapache2-mod-php7.2

# Install composer
# apt-get install composer

# Set MySQL password
# debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
# debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
# apt-get install -y mysql-server

# PHP-MYSQL lib
# apt-get install -y php7.2-mysql

# Install phpmyadmin
# apt-get install phpmyadmin php-mbstring php-gettext -y

# Install node.js 12.X
# curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
# sudo apt-get install -y nodejs

# set local timezone
# sudo timedatectl set-timezone 'Europe/Rome'

# Download WordPress
# rm -rf /var/www/html/
# wget -P http://wordpress.org/latest.tar.gz /var/www/html/
# tar xzf /var/www/html/latest.tar.gz
# mv /var/www/html/wordpress/* /var/www/html/
# rm -rf /var/www/html/wordpress /var/www/html/latest.tar.gz
# chown -R www-data: /var/www/html/.
# touch /var/www/html/wp-config.php

# Restart Apache
# service apache2 restart

