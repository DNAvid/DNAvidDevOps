## EC2 No 1
## Install Git
sudo apt-get update
sudo apt-get install git

## Install Docker-Machine
## https://docs.docker.com/machine/install-machine/
curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` > a
sudo mv a /usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine

## Install AWS-CLI
## ## Install pip
sudo apt-get install python-pip
sudo pip install awscli

## create standard credential file for Amazon AWS ~/.aws/credentials
aws configure
## AWS Access Key ID [None]: AKIAJ3X3EJRAYDNJJ4KQ
## AWS Secret Access Key [None]: 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
docker-machine --debug create --amazonec2-vpc-id vpc-89ac9be0 --amazonec2-subnet-id subnet-bf2610c4 --amazonec2-region eu-central-1 --amazonec2-zone b --driver amazonec2 webserver
