#!/usr/bin/env bash

sudo systemctl start docker

git clone https://github.com/bonitoo-io/selenium-accept-infl2.git

cd selenium-accept-infl2/

sudo journalctl -u docker.service

npm run influx:setup

