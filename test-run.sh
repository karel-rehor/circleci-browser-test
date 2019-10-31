!#/usr/bin/env bash

sleep 30

sudo netstat -tlnp
curl -v --connect-timeout 60 --max-time 60 http://localhost:9999/debug/flush

git clone https://github.com/bonitoo-io/selenium-accept-infl2.git

cd selenium-accept-infl2/

npm install 

npm test -- features/onboarding/onboarding.feature

npm run report:junit

