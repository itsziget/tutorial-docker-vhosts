FROM httpd:2.4

RUN mv conf/httpd.conf conf/httpd.conf.orig \
 && awk '\
      {\
        gsub("ServerAdmin you@example.com", "ServerAdmin webmaster@127.0.0.1.nip.io");\
        print $0\
      }\
   ' conf/httpd.conf.orig > conf/httpd.conf \
 && unlink conf/httpd.conf.orig

COPY index.html /usr/local/apache2/htdocs/index.html