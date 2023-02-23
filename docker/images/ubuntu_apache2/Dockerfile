FROM ubuntu
RUN apt-get update &&\
    apt-get -qqy upgrade &&\
    apt-get -qqy install apache2

EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
