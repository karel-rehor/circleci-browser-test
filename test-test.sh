#!/usr/bin/env bash

#sudo systemctl start docker

#git clone https://github.com/bonitoo-io/selenium-accept-infl2.git

#cd selenium-accept-infl2/

#sudo journalctl -u docker.service

#npm run influx:setup

sudo docker pull quay.io/influxdb/influx:nightly
sudo docker run --name influx_test -d -p 9999:9999 quay.io/influxdb/influx:nightly /entrypoint.sh influxd --e2e-testing=true
echo "sleeping 30s"
sleep 30
sudo netstat -tlnp
curl -v --connect-timeout 60 --max-time 60 http://localhost:9999/debug/flush


