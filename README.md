**In construction**

**Docker BDD CI**

	Based on Debian Jessie, created to attend CI.

Installed Packages

	- NodeJS
	- Java JDK 8
	- Protractor
	- Webdriver-manager
	- ChromeDriver
	- Geckodriver

How to use:

	$ docker run --rm -v /path/to/bdd/folder:/bdd bdd-ci:latest protractor.conf.js