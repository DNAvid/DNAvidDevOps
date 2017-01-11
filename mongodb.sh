# Secure version of mongo docker container
## https://hub.docker.com/r/khezen/mongo/
sudo docker pull khezen/mongo
sudo docker run -d -p 27017:27017 -e ADMIN_USER=root -e ADMIN_PWD=secret-password -e AUTH=y --name dnavid khezen/mongo:latest
sudo docker run -it --link dnavid:mongo --rm mongo sh -c 'exec mongo -u root -p secret-password  "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/admin"'

## Create user inside
> use dnavid
> db.createUser(
{
        user: "api",
        pwd: "api-secret-password",
        roles: [ { role: "readWrite", db: "dnavid" } ]
}
)
## not possible to log in with this user ;-(
## Cleanup
## sudo docker stop dnavid; sudo docker rm dnavid