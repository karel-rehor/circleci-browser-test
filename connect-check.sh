!#/usr/bin/env bash

sudo netstat -tlnp
curl -v --connect-timeout 60 --max-time 60 http://localhost:9999/debug/flush
