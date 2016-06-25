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
sudo pip install awscli

## create standard credential file for Amazon AWS ~/.aws/credentials
aws configure
## AWS Access Key ID [None]: AKIAJ3X3EJRAYDNJJ4KQ
## AWS Secret Access Key [None]: 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
