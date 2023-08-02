FROM php:8.2.7-cli-alpine3.18

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
    bcmath                 \
    calendar               \
    enchant                \
    exif                   \
    gd                     \
    gettext                \
    gmp                    \
    igbinary               \
    imagick                \
    imap                   \
    intl                   \
    mcrypt                 \
    memcached              \
    msgpack                \
    mysqli                 \
    opcache                \
    pdo_mysql              \
    redis                  \
    soap                   \
    sockets                \
    tidy                   \
    xsl                    \
    zip && \
    echo 'date.timezone="UTC"' > /usr/local/etc/php/conf.d/docker-gitlab-ci-runner-php.ini && \
    echo 'phar.readonly=off'  >> /usr/local/etc/php/conf.d/docker-gitlab-ci-runner-php.ini && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    apk add git && \
    apk add rsync && \
    apk add openssh

VOLUME ["/cache", "/root/.composer", "/root/.ssh"]
