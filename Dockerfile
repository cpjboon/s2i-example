ROM docker.io/php:8.2.28-apache

RUN sed -i 's/^Listen 80/Listen 8080/' /etc/apache2/ports.conf

EXPOSE 8080

RUN chgrp -R 0 /var/www/html && \
    chmod -R g=u /var/www/html

COPY ./html/ /var/www/html/
