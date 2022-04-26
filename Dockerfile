FROM docker-hub.obit.ru/base/php:7.4.26-fpm

WORKDIR /application
## Copy Project files
COPY ./app /application

#ENV COMPOSER_ALLOW_SUPERUSER=1 \
#  COMPOSER_DISABLE_XDEBUG_WARN=1 \
#  PATH="/root/.composer/vendor/bin:$PATH"

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz \
  && cd /application
#    && composer install  \
#    && chmod -R 777 /application/var \
#    && rm -rf /application/var/cache