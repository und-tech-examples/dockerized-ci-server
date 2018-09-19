
creeate_home:
	mkdir jenkins_home

up:
	docker-compose up

aws-crdentials:
	if rm -rf ./jenkins_home/.aws ; then echo removed! ;fi
	cp -R ~/.aws ./jenkins_home
