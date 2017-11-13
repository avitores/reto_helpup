#!/bin/sh -x

docker-compose build 
docker-compose up -d 
docker-compose exec web sh -c "rails db:create db:migrate db:seed"
