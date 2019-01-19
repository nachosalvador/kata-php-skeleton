# Kata PHP Skeleton

Dockerized PHP skeleton for coding katas.

## Install

* Construct docker container:

``` bash
$ docker-compose up
```

* Access to docker container:

``` bash
$ docker exec -it kata-php bash
```

* Install dependencies:

``` bash
$ composer install
```

## Testing

* Launch tests from container:

``` bash
$ vendor/bin/phpunit
```

## License

Please see [License File](LICENSE) for more information.
