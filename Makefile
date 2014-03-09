PHP=$(shell which php)
CURL=$(shell which curl)

setup:
	$(PHP) -r "eval('?>'.file_get_contents('https://getcomposer.org/installer'));"
install: setup
	$(PHP) composer.phar install
