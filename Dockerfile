FROM debian:jessie
MAINTAINER Salvatore Caputi <salvatore@scaputi.net>

RUN apt-get update
RUN apt-get install -y nano
RUN apt-get install -y apache2
RUN apt-get install -y php5 php5-common php5-cli php5-mysql php5-curl
RUN apt-get install -y wget
RUN apt-get install -y git

ENV TERM xterm

COPY apache-start.sh /usr/local/bin/apache-start
RUN chmod +x /usr/local/bin/apache-start

COPY install-composer.sh /usr/local/bin/install-composer
RUN chmod +x /usr/local/bin/install-composer
RUN ["install-composer"]

CMD ["apache-start"]
EXPOSE 80
