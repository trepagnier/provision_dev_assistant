#!/bin/bash

docker-compose down
sed -i -e 's/\${AUTHORIZATION_TYPE:-basic}/stub/g' docker-compose.yml
docker-compose up
