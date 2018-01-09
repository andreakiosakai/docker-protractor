#!/bin/bash
npm update

webdriver-manager update

webdriver-manager start --detach --seleniumPort=80 && xvfb-run -a --server-args='-screen 0 1920x1080x24' $@