# Drupal Console Docker Container
FROM composer/composer:php5
MAINTAINER Rob Loach <robloach@gmail.com>

# Add common extensions
RUN apt-get update && apt-get install -y \
  mysql-client \
  postgresql-client \
  libpq-dev
RUN docker-php-ext-install mysqli pgsql pdo_mysql pdo_pgsql

# Update the entry point of the application
ENTRYPOINT ["drupal"]
