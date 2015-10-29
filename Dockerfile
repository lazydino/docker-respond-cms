FROM php:5.6-apache

RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev libpq-dev \
	&& rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd pdo pdo_mysql pdo_pgsql

RUN mkdir -p /var/www/html/respond/app/sites \
	&& chown -R www-data /var/www/html/respond/app/sites \
	&& a2enmod rewrite \
	&& a2enmod vhost_alias

ADD respond/ /var/www/html/respond/app
ADD config/setup.php /var/www/html/respond/app/
# ADD config/localhost* /etc/apache2/sites-available/
ADD config/apache2.conf /etc/apache2/

# Activate conf files
# RUN a2ensite localhost-respond-subdomain.conf \ 
# 	&& a2ensite localhost-respond.conf

EXPOSE 80
