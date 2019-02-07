kata-build:
	docker build -t kata-php .
	docker run -v $(shell pwd):/app kata-php composer install

kata-tests:
	docker run -v $(shell pwd):/app kata-php vendor/bin/phpunit

help:
	@echo ""
	@echo "Please use make <command> where <command> is one of:"
	@echo ""
	@echo "  kata-build    create docker image and install kata dependencies."
	@echo ""
	@echo "  kata-tests    execute kata tests."
	@echo ""
