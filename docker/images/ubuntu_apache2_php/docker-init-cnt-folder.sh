#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

mkdir -p /opt/docker/container/cnt_ubu_apa2/var_www_html

if [[ ! -f "/opt/docker/container/cnt_ubu_apa2/var_www_html/page.php"  ]]
then
  echo "Create page.php"
  echo "<html><body><h1>my page</h1><?php phpinfo(); ?></body></html>" > /opt/docker/container/cnt_ubu_apa2/var_www_html/page.php
fi

chown www-data:www-data -R /opt/docker/container/cnt_ubu_apa2/var_www_html
