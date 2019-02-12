
**Docker BDD CI**

	Based on Debian Jessie, created to attend CI tests, using NodeJS, Webdriver-manager and Prodtractor.

*PreRequisites*
	
	To use this Docker, need to install:
	
	- Docker (https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#set-up-the-repository)

	Run command to download image:
	
	docker pull andresakai/docker-protractor:<tag>

	check the latest tag (not the latest but a version number, ex.: 0.0.1)

*Installed Packages*

	- NodeJS
	- Java JDK 8
	- Protractor
	- Webdriver-manager
	- ChromeDriver
	- Geckodriver
	
*To check if docker build is successful:*
	
	docker run -it --entrypoint "/bin/bash" andresakai/docker-protractor:latest

*How to use:*

	Run this command inside your bdd project folder:
	
	$ docker run --rm -v $(pwd):/bdd andresakai/docker-protractor:<tag> protractor.conf.js <args>
	andresakai/docker-protractor
	<tag> : check the tags to use the most appropriate

	For args, you can use to override default values in protractor.conf.js:
	--cucumberOpts.tags (to change tags that will run tests, without changing protractor.conf.js)
	--walnutjsOpts.parametersPath (to change env parameters)
	
	To run web pages, you need to change selenium address from: seleniumAddress: 'http://localhost:4444/wd/hub'
	to:
	seleniumAddress: 'http://<dockerip>:4444/wd/hub'