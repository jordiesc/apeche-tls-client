FROM httpd:2.4.48

RUN mkdir -p /etc/apache2/ssl

COPY ./keys/ca.* /etc/apache2/ssl/
COPY ./keys/client.* /etc/apache2/ssl/
COPY ./keys/server.* /etc/apache2/ssl/
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./myhost.conf /usr/local/apache2/sites-available/myhost.conf

RUN mkdir -p /var/www/html
COPY ./index.html /var/www/html


EXPOSE 80
EXPOSE 443
