## To change subdomain you need to change yml file.
sudo vim /var/discourse/containers/app.yml
## And restart the server
sudo /var/discourse/launcher rebuild app

## when rebuilding app, old containers stack up, to clean them
apt-get autoclean
apt-get autoremove
cd /var/discourse
./launcher cleanup
