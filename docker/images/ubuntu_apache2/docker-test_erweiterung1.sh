[ ! -d "/opt/docker/container/cnt_ubu_apa2" ] && echo "Directory '/opt/docker/container/cnt_ubu_apa2' not exists. Error." && exit

docker stop cnt_ubu_apa2
docker rm cnt_ubu_apa2
docker run -d \
           --name cnt_ubu_apa2 \
           -p 81:80 \
           img_ubuntu_apache
