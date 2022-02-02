FROM ubuntu:18.04
LABEL      maintainer="BlueT - Matthew Lien - 練喆明 <bluet@bluet.org>"

ENV DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true

COPY sources.list.bionic /etc/apt/sources.list
ADD entrypoint.sh /entrypoint.sh

RUN echo "Asia/Taipei" > /etc/timezone && \
	apt-get update && \
	apt-get install -y software-properties-common && \
	add-apt-repository -u ppa:ondrej/php && \
	apt-get install -y net-tools apt-transport-https lighttpd iputils-ping php5.6-cgi php5.6-mysql

CMD ["sh", "/entrypoint.sh"]

EXPOSE 80 443

