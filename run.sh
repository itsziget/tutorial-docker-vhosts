#!/bin/bash

docker run \
  --name "httpd-vhosts" \
  --network host \
  -d \
  -v "$PWD/vhosts:/var/vhosts" \
  -v "$PWD/httpd.conf:/usr/local/apache2/conf/httpd.conf" \
  -v "$PWD/httpd-vhosts.conf:/usr/local/apache2/conf/extra/httpd-vhosts.conf" \
  httpd:2.4