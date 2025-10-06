FROM docker.io/httpd:2.4.65

RUN sed -i 's/^Listen 80/Listen 8080/' /usr/local/apache2/conf/httpd.conf

EXPOSE 8080

RUN chgrp -R 0 /usr/local/apache2 && \
    chmod -R g=u /usr/local/apache2

COPY ./html/ /usr/local/apache2/htdocs/
