# Kata PHP Skeleton

Dockerized PHP skeleton for coding katas.
This skeleton for katas could be used with local or docker environment.

## Local environment

### Requirements

* PHP 7.1
* [Composer](https://getcomposer.org/download/)

### Installation

Install project dependencies:

```bash
$ composer install
```

### Testing

```bash
$ vendor/bin/phpunit
```

## Docker environment

### Requirements

* [Docker](https://docs.docker.com/install/)

### Installation

Create docker image and install project dependencies:

```bash
$ make kata-build
```

### Testing

```bash
$ make kata-tests
```

## License

Please see [License File](LICENSE) for more information.
