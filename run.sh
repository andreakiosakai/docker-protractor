#!/bin/bash
webdriver-manager start --detach --seleniumPort=80 && xvfb-run -a --server-args='-screen 0 1280x1024x24' protractor $@