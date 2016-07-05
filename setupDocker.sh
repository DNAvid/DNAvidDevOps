## Setup Debian instance on GCP
gcloud compute --project "tutorials-1357" instances create "instance-2" --zone "us-central1-b" --machine-type "n1-standard-1" --network "default" --maintenance-policy "MIGRATE" --scopes default="https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring.write","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management" --tags "http-server","https-server" --image "/debian-cloud/debian-8-jessie-v20160629" --boot-disk-size "10" --boot-disk-type "pd-standard" --boot-disk-device-name "instance-2"

## Setup docker on debian gcp instance
##  see https://docs.docker.com/engine/installation/linux/debian/
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo touch /etc/apt/sources.list.d/docker.list
sudo vim /etc/apt/sources.list.d/docker.list 
## copy this line into file then save and quit vim
deb https://apt.dockerproject.org/repo debian-jessie main
sudo apt-get update
## Just a check
apt-cache policy docker-engine

## Install Docker proper
## Update the APT package index.
sudo apt-get update
## Install Docker.
sudo apt-get -y install docker-engine


##Start the docker daemon.
sudo service docker start
## Verify docker is installed correctly.
sudo docker run hello-world

## Run Docker image for a MEANJS stack app
## Create a new user
sudo docker run -p 27017:27017 -d --name db mongo
sudo docker run -p 80:3000 --link db:db_1 -ti meanjs/mean bash
sudo docker run -p 80:3000 80:35729 --link db:db_1 -ti meanjs/mean bash
# When on meanjs/mean image
grunt
