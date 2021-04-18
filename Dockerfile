FROM httpd:2.4

COPY ./httpd.conf /usr/local/apache2/conf
COPY ./httpd-vhosts.conf /usr/local/apache2/conf/extra

COPY vhosts /var/vhosts
