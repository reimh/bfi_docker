[ ! -d "/opt/docker/container/cnt_ubu_apa2" ] && echo "Directory '/opt/docker/container/cnt_ubu_apa2' not exists. Error." && exit

docker stop cnt_ubu_apa2
docker rm cnt_ubu_apa2
docker run -d \
           --name cnt_ubu_apa2 \
	   -v /opt/docker/container/cnt_ubu_apa2/var_www_html/:/var/www/html:rw \
           -p 81:80 \
           img_ubuntu_apache_php


docker exec -it  cnt_ubu_apa2 cat /var/www/html/index.html
