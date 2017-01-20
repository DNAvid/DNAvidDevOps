# Secure version of mongo docker container
## https://hub.docker.com/r/khezen/mongo/
sudo docker pull khezen/mongo
sudo docker run -d -p 27017:27017 -e ADMIN_USER=root -e ADMIN_PWD=secret-password -e AUTH=y --name dnavid khezen/mongo:latest
sudo docker run -it --link dnavid:mongo --rm mongo sh -c 'exec mongo -u root -p secret-password  "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/admin"'

## Cleanup
## sudo docker stop dnavid; sudo docker rm dnavid

## Create users database
> use users
## Create api user, behind authentication and authorization to read and write from user database
> db.createUser(
{
        user: "api",
        pwd: "api-secret-password",
        roles: [ 
        { role: "readWrite", db: "users" } ,
        { role: "readWrite", db: "public" }         
        ]
}
)

## Create public user, reading information made public by users on public database
> use public
> db.createUser(
{
        user: "public",
        pwd: "public-secret-password",
        roles: [ { role: "read", db: "public" } ]
}
)


## Cleanup
## sudo docker stop dnavid; sudo docker rm dnavid
