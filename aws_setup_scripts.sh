## EC2 No 1
## Install Git
sudo apt-get git

## Install Docker-Machine
## https://docs.docker.com/machine/install-machine/
curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine && \
chmod +x /usr/local/bin/docker-machine

## Install AWS-CLI
## ## Install pip
sudo apt-get install python-pip

