# Drupal Console Docker Container
FROM drupalconsole/console:base-php5-alpine
MAINTAINER William Hearn <sylus1984@gmail.com>

# Set the Drupal Console version.
ENV DRUPAL_CONSOLE_VERSION 1.0.0-alpha2

# Install Drupal Console using Composer.
RUN composer global require drupal/console:"$DRUPAL_CONSOLE_VERSION" --prefer-dist

# Display which version of Drupal Console was installed.
RUN drupal --version
