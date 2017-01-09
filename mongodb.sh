# get the mongo docker
sudo docker pull mongo

## Start a docker container with mongo
sudo docker run -p 27017:27017 --name dnavid -d mongo

## connect to MongoDB Shell
sudo docker run -it --link dnavid:mongo --rm mongo sh -c 'exec mongo "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017
_TCP_PORT/test"'

## Load json into db
mongoimport --db test --collection restaurants --drop --file ~/downloads/primer-dataset.json

