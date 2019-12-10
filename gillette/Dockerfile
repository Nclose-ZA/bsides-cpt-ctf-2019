#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository
RUN apt-get update

# Install necessary dependencies
RUN apt-get install -y apt-utils apache2 php7.0 libapache2-mod-php7.0 curl

# Copy content
RUN mkdir /var/www/html/siteimages
COPY changelog.php /var/www/html/changelog.php
COPY index.php /var/www/html/index.php
COPY funny.gif /var/www/html/siteimages/funny.gif
COPY index.html /var/www/html/index.html
COPY apache2.conf /etc/apache2/apache2.conf
COPY pattern_darkwingduck.jpg /var/www/html/siteimages/pattern_darkwingduck.jpg
COPY slime.png /var/www/html/siteimages/slime.png
COPY ninetiescss.css /var/www/html/ninetiescss.css

# Add Apache stuff and remove defaults
RUN rm -rf /etc/apache2/sites-enabled/000-default.conf
RUN useradd -p $(openssl passwd -1 5TxzMyHVwgZR) malwareunicorn
COPY default.conf /etc/apache2/sites-enabled/default.conf

# Adding module rewrite functionality
RUN a2enmod rewrite

# Adding .htaccess to make CTF slighly easier
COPY htaccess /var/www/html/.htaccess

# Start Apache

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
