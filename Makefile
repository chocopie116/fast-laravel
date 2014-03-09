PHP=$(shell which php)
CURL=$(shell which curl)
CHMOD=$(shell which chmod)

setup:
	$(PHP) -r "eval('?>'.file_get_contents('https://getcomposer.org/installer'));"
install: setup
	$(PHP) composer.phar install
	$(CHMOD) -R 0777 app/storage
