# get the mongo docker
sudo docker pull mongo

## Start a docker container with mongo
sudo docker run -p 27017:27017 --name dnavid -d mongo
## Secure version
sudo docker run -d -p 27017:27017 -e DB_USER=root -e DB_PWD=secret_pwd -e DB_NAME=dnavid khezen/mongo:latest

## connect to MongoDB Shell w/o uname and pwd
sudo docker run -it --link dnavid:mongo --rm mongo sh -c 'exec mongo "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017
_TCP_PORT/test"'

## connect to MongoDB Shell w/ uname and pwd
sudo docker run -it --link dnavid:mongo --rm mongo sh -u dnavid -p some-initial-password --authenticationDatabase admin-c 'exec mongo "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017
_TCP_PORT/test"'

## Load json into db
mongoimport --db test --collection users --drop --file ~/users.json


## Configure secure login (initial password is secret)
## > db.createUser({ user: 'dnavid', pwd: 'some-initial-password', roles: [ { role: "userAdminAnyDatabase", db: "admin" } ] });
