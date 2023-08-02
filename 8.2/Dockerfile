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
    php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    apk add git && \
    apk add rsync && \
    apk add openssh

VOLUME ["/cache", "/root/.composer", "/root/.ssh"]
