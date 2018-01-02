**In construction**

**Docker BDD CI**

	Based on Debian Jessie, created to attend CI.

*PreRequisites*
	
	To use this Docker, need to install:
	
	- Docker (https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#set-up-the-repository)

Installed Packages

	- NodeJS
	- Java JDK 8
	- Protractor
	- Webdriver-manager
	- ChromeDriver
	- Geckodriver

How to use:

	$ docker run --rm -v /path/to/bdd/folder:/bdd bdd-ci:<tag> protractor.conf.js <args>
	
	<tag> : check the tags to use the most appropriate

	For args, you can use to override default values in protractor.conf.js:
	--cucumberOpts.tags (to change tags that will run tests, without changing protractor.conf.js)
	--walnutjsOpts.parametersPath (to change env parameters)
	