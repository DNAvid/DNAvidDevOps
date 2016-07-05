## Run Docker image for a MEANJS stack app
## Dev
sudo docker run -p 27017:27017 -d --name dbdev mongo
sudo docker run -p 80:3000 --link dbdev:db_1 -ti --name meanjsdev meanjs/mean bash
## Map livereload port??
## sudo docker run -p 80:3000 80:35729 --link db:db_1 -ti meanjs/mean bash
# When on meanjs/mean image
grunt


## Production
sudo docker run -p 27017:27017 -d --name db mongo
sudo docker run -p 80:8443 --link db:db_1 -ti --name meanjs meanjs/mean bash
