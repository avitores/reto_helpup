#!/bin/sh -x

docker-compose down
rm -rf ./dbs-data
docker-compose build 
docker-compose up -d 
sleep 10
docker-compose exec web sh -c "rails db:drop"
docker-compose exec web sh -c "rails db:create"
docker-compose exec web sh -c "rails db:migrate"
docker-compose exec web sh -c "rails db:seed"

# sudo chmod -R 0777 .
