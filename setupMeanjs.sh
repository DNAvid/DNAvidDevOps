## Run Docker image for a MEANJS stack app
## Create a new user
sudo docker run -p 27017:27017 -d --name db mongo
sudo docker run -p 80:3000 --link db:db_1 -ti meanjs/mean bash
sudo docker run -p 80:3000 80:35729 --link db:db_1 -ti meanjs/mean bash
# When on meanjs/mean image
grunt
