# Drupal Console Docker Container

[![Build Status](https://travis-ci.org/sylus/docker-drupalconsole.svg?branch=master)](https://travis-ci.org/sylus/docker-drupalconsole)

# Supported tags and respective `Dockerfile` links

- `1.0`
- `1.0-alpine`
- `1.0-php5`
- `1.0-php5-alpine`
- `1`, `latest`
- `master`
- `master-php5`
- `master-alpine`
- `master-php5-alpine`

# What is Drupal Console?

A [Docker](http://docker.com) container to run [Drupal Console](https://drupalconsole.com), The new CLI for [Drupal](http://drupal.org) as well as a tool to generate boilerplate code, interact with and debug Drupal.

![Drupal Console](https://drupalconsole.com/themes/custom/drupalconsole/assets/src/images/drupal-console.png "Drupal Console")

## Usage

This covers how to run the Drupal Console container through the [Docker CLI](http://docker.com).

### Pull

Pull `drupalconsole/console` from the Docker repository:

``` bash
docker pull drupalconsole/console
```

Alternatively, you can download a specific version of Drupal Console:

``` bash
docker pull drupalconsole/console:1.0
```

### Run

To execute Drupal Console directly, run the container with `docker run`, mounting the `/app` volume:

``` bash
docker run -v $(pwd):/app drupalconsole/console
docker run -v $(pwd):/app drupalconsole/console help
docker run -v $(pwd):/app drupalconsole/console --version
docker run -v $(pwd):/app drupalconsole/console status
```

If you installed a specific version of Drupal Console, run it with:

``` bash
docker run -v $(pwd):/app drupalconsole/console:1.0 --version
```

## Development

1. Download the source:
  ``` bash
  git clone https://github.com/sylus/docker-drupalconsole.git
  cd docker-drupalconsole
  ```

2. Build one of the images:
  ``` bash
  docker build -t drupalconsole/console:1.0 1.0
  ```

3. Use the `Makefile` to build and test all images:
  ``` bash
  make
  ```

4. Visit [the `drupalconsole/console` Docker Hub](https://hub.docker.com/r/drupalconsole/console/) for build details.

5. Submit Pull Requests and create issues for new changes and features you'd like to add.









# How to use this image.

## Installation / Usage

1. Install the `drupalconsole/console` container:

    ``` sh
    $ docker pull drupalconsole/console
    ```

  Alternatively, pull a specific version of `drupalconsole/console`:
    ``` sh
    $ docker pull drupalconsole/console:1.0
    ```

# Image Variants

## `drupalconsole/console:<version>`

This is the defacto image. If you are unsure about what your needs are, you probably want to use this one. It is designed to be used both as a throw away container (mount your source code and start the container to start your app), as well as the base to build other images off of.

## `drupalconsole/console:php5`

This is made to run Composer through PHP 5, rather then the default of PHP 7.

## `drupalconsole/console:alpine`

This image is based on the popular [Alpine Linux project](http://alpinelinux.org/), available in [the alpine official image](https://hub.docker.com/_/alpine). Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.

## `drupalconsole/console:php5-alpine`

This is made to run Composer through PHP 5, rather then the default of PHP 7, through the Alpine container.
