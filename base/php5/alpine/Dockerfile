# Drupal Console Docker Container
FROM composer/composer:php5-alpine
MAINTAINER Rob Loach <robloach@gmail.com>

# Add common extensions
RUN apk --update add \
    build-base \
    libpq \
    mysql-client \
    postgresql-client \
    postgresql-dev \
    patch \
    tar && \
    docker-php-ext-install mysqli pgsql pdo_mysql pdo_pgsql && \
    apk del build-base postgresql-dev && \
    rm -rf /var/cache/apk/*

# Update the entry point of the application
ENTRYPOINT ["drupal"]
