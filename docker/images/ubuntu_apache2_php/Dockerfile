FROM img_ubuntu_apache

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get -qqy upgrade &&\
    apt-get -qqy install php libapache2-mod-php

EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
