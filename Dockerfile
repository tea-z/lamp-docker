FROM devilbox/php-fpm:7.2-work
#RUN apt install gnupg gnupg2 gnupg1
RUN mkdir -p /var/www/default
RUN mkdir -p /shared/httpd
RUN apt-get update && apt-get install -y gnupg gnupg1 gnupg2 --no-install-recommends
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get update -q && apt-get install nodejs
RUN npm install -g bower
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer
#RUN cd /shared/httpd
#RUN laravel new smart_home
#RUN ln -s /shared/httpd/smart_home/public/ /var/www/default/htdocs/
