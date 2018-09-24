OS=`uname`
VERDE=\033[32m
CLOSE_COLOR=\033[0m

create_home:
	mkdir jenkins_home

install:
	@echo '$(VERDE)Create .env$(CLOSE_COLOR)';
	@if [ $(OS) == "Darwin" ]; then \
		echo "VOLUME_DOCKER=/usr/local/bin/docker" > .env; \
	else \
		echo "VOLUME_DOCKER=/usr/bin/docker" > .env; \
	fi;

up:
	docker-compose up

aws-credentials:
	if rm -rf ./jenkins_home/.aws ; then echo removed! ;fi
	cp -R ~/.aws ./jenkins_home
