#!/bin/bash
uid=$(stat -c %u ${PWD})
gid=$(stat -c %g ${PWD})

groupadd -o -g $gid protractor
useradd -m -o -u $uid -g $gid protractor

sudo -u webdriver-manager start --detach --seleniumPort=80 && xvfb-run -a --server-args='-screen 0 1280x1024x24' protractor $@