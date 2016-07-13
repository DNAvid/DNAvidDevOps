## 1 - Commit/push from dev
## Merge dev with master
## Wait for Docker Hub to build images
## on prod
sudo docker pull davidweisss/dnavid
sudo docker stop dnavid
sudo docker rm dnavid
sudo docker run -p 80:8443 --link db:db_1 -ti --name dnavid davidweisss/dnavid bash
## once in container
grunt prod
