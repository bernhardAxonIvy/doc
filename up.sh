#!/bin/bash

rm -rf build
mvn clean package

# only start firefox if it is available.
which firefox > /dev/null
if [ $? == 0 ]; then
   (sleep 20 && firefox http://localhost:8000) &
fi

export UID=$(id -u)
docker compose up
