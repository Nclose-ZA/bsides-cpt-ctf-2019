#Download base image ubuntu 16.04
FROM ubuntu:16.04

RUN echo "mysql-server mysql-server/root_password password AXw6gdfy3Q8b" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password AXw6gdfy3Q8b" | debconf-set-selections

# Update Ubuntu Software repository
RUN apt-get update

# Install necessary dependencies
RUN apt-get install -y apt-utils apache2 php7.0 php7.0-mysql libapache2-mod-php7.0 curl nano telnet

# MySQL
RUN apt-get update && \
	apt-get -y install mysql-server && \
	mkdir -p /var/lib/mysql && \
	mkdir -p /var/run/mysqld && \
	mkdir -p /var/log/mysql && \
	chown -R mysql:mysql /var/lib/mysql && \
	chown -R mysql:mysql /var/run/mysqld && \
	chown -R mysql:mysql /var/log/mysql

VOLUME /var/lib/mysql

# Install SSH
RUN apt-get install -y openssh-server

COPY sshd_config /etc/ssh/sshd_config

# Copy web content
## <<<<<<< HEAD

COPY page.php /var/www/html/index.php
## =======
COPY page.php /var/www/html/page.php
## >>>>>>> ec667716884288914708c4ce3127f359e0b3ac3c
COPY keanu.gif /var/www/html/keanu.gif
COPY apache2.conf /etc/apache2/apache2.conf

# Adding module rewrite functionality
RUN a2enmod rewrite

# Adding .htaccess to make CTF slighly easier
COPY htaccess /var/www/html/.htaccess

# Add Apache stuff and remove defaults

RUN rm -rf /etc/apache2/sites-enabled/000-default.conf
COPY default.conf /etc/apache2/sites-enabled/default.conf
RUN rm -rf /var/www/html/index.html

# Add user and flag
RUN useradd -p $(openssl passwd -1 halleberryisasnack) johnwick
COPY flag.txt /home/johnwick/flag.txt

# Configuring MySQL

COPY startup.sh /root/startup.sh
RUN chmod +x /root/startup.sh

EXPOSE 22 80

CMD ["/bin/bash", "/root/startup.sh"]
