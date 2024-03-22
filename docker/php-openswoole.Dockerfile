FROM php:8.3-cli-bullseye

RUN sed -i 's/deb\.debian\.org/ftp.de.debian.org/g' /etc/apt/sources.list

RUN apt-get update --fix-missing && \
    apt-get install --yes nmap curl iputils-ping psutils net-tools bind9-host bind9utils telnet && \
    apt-get install --yes libssl-dev libcurl4-openssl-dev libc-ares-dev libssl-dev libcurl4-openssl-dev && \
    apt-get clean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN docker-php-ext-configure sockets && docker-php-ext-install sockets

RUN printf "yes\nyes\nyes\nyes\nyes\nno\n" | pecl install -f openswoole
RUN docker-php-ext-enable openswoole
