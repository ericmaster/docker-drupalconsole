build: build-1.0 build-master

test: build test-1.0 test-master

build-base:
	docker build -t drupalconsole/console:base base
	docker build -t drupalconsole/console:base-alpine base/alpine
	docker build -t drupalconsole/console:base-php5 base/php5
	docker build -t drupalconsole/console:base-php5-alpine base/php5/alpine

build-master: build-base
	docker build -t drupalconsole/console:master master
	docker build -t drupalconsole/console:master-alpine master/alpine
	docker build -t drupalconsole/console:master-php5 master/php5
	docker build -t drupalconsole/console:master-php5-alpine master/php5/alpine

test-master:
	@echo -n "master\t\t\t"
	@docker run drupalconsole/console:master --version --no-ansi
	@echo -n "master-alpine\t\t"
	@docker run drupalconsole/console:master-alpine --version --no-ansi
	@echo -n "master-php5\t\t"
	@docker run drupalconsole/console:master-php5 --version --no-ansi
	@echo -n "master-php5-alpine\t"
	@docker run drupalconsole/console:master-php5-alpine --version --no-ansi

build-1.0: build-base
	docker build -t drupalconsole/console:1.0 1.0
	docker build -t drupalconsole/console:1.0-alpine 1.0/alpine
	docker build -t drupalconsole/console:1.0-php5 1.0/php5
	docker build -t drupalconsole/console:1.0-php5-alpine 1.0/php5-alpine

test-1.0:
	@echo -n "1.0\t\t\t"
	@docker run drupalconsole/console:1.0 --version --no-ansi
	@echo -n "1.0-alpine\t\t"
	@docker run drupalconsole/console:1.0-alpine --version --no-ansi
	@echo -n "1.0-php5\t\t"
	@docker run drupalconsole/console:1.0-php5 --version --no-ansi
	@echo -n "1.0-php5-alpine\t\t"
	@docker run drupalconsole/console:1.0-php5-alpine --version --no-ansi
