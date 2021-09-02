ls
ls -h
cd ssh
ssh-keygen
ls
mkdir -p ~/.ssh
touch ~/.ssh/authorized_keys
ls
ls -p
vim ~/.ssh/authorized_keys
cat ~/.ssh/id_rsa.pub
vim ~/.ssh/authorized_keys
git init
git remote add origin git@github.com:daryl-bishop/duo-project.git
git pull origin 
ls
git remote remove origin
git remote add origin https://github.com/daryl-bishop/practical-project.git
git pull origin main
git remote remove origin
git remote add origin https://github.com/daryl-bishop/duo-project.git
git pull origin main
ls
git pull origin dev
git pull origin testup
ls
git branch -d testup
clear
sudo usermod -aG docker $(whoami)
exit
ls
cd bae-cne-sfia2-brief/
ls
cd backend/
ls
#cd app
#cd application
cd application/
ls
cd ../
ls
cd application/
ls
cd ../
ls
cd database/
ls
cd .//
cd ../
cd backend/
ls
cd ../
sudo apt-get update
sudo apt install curl -y
curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
exit
sudo apt update
sudo apt install -y curl jq
docker-compose --version
sudo apt install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
ls
cd bae-cne-sfia2-brief/
ls
cd frontend/
ls
cd application/
ls
cd templates/
ls
cd .//
cd ../
ls
cd ../
docker login
docker search java
docker search python
clear
ls
cd bae-cne-sfia2-brief/
ls
mkdir nginx
ls
cd nginx
ls
cd .//
cd ../
ls
cd database/
ls
vim Dockerfile 
cd ../
ls
cd backend/
ls
touch Dockerfile
ls
vim Dockerfile 
ls
cd ../
ls
cd frontend/
ls
touch Dockerfile
vim Dockerfile 
cd ../
ls
cd nginx/
ls
touch nginx.conf
ls
vim nginx.conf 
cd ../
touch docker-compose.yaml
ls
vim docker-compose.yaml 
cd ../
git checkout -b docker
git push origin docker
git list --remotes
git remote -v
git push origin docker
cat ~/.ssh/id_rsa.pub
git push origin docker
git remote remove origin 
git remote add origin git@github.com:daryl-bishop/duo-project.git
git remote -v
git push origin docker
git checkout docker
git add .
git commit -m "DP-6 #comment docker files"
git config --global user.email "ccartwright@qa.com"
git config --global user.name "charlotte"
git commit -m "DP-6 #comment docker files"
git push origin docker
docker compose up --build
docker-compose up --build
cd bae-cne-sfia2-brief/
docker-compose up --build
ls
cd database/
ls
vim Dockerfile 
ls
cd ../
ls
vim docker-compose.yaml 
cd ../
git add .
git commit -m "DP-6 #comment Bug Fix"
git push origin docker
docker network create practical-network
docker network ps
docker network ls
docker network rm practical-network
docker network ls
docker create network --driver overlay practical-network
docker login
docker create network --driver overlay practical-network
docker network create -d overlay practical-network
docker swarm init
docker network create -d overlay practical-network
docker network ls
docker node ls
cd bae-cne-sfia2-brief/
docker compose up --build
docker-compose up --build
docker-compose down --rmi all
docker-compose up -d --build
curl localhost
docker logs backend
docker logs frontend
curl localhost
docker logs backend
docker logs database
docker logs mysql
docker-compose down --rmi all
ls
cd database
ls
vim Dockerfile 
cd ..
cd backend/
bc qpp
cd application/
vim __init__.py 
cd ..
vim Dockerfile 
cd ..
ls
cd frontend
vim Dockerfile 
cd ..
ls
cd database/
vim Dockerfile 
cd ..
vim docker-compose.yaml 
docker-compose up -d --build
curl localhost
docker-compose dwon --rmi all
docker-compose down --rmi all
vim docker-compose.yaml 
docker login
docker-compose up -d --build
docker-compose push
docker-compose down --rmi all
docker stack deploy --compose-file docker-compose.yaml project-stack
docker stack deploy --compose-file docker-compose.yaml project-stack
docker services ls
docker service ls
docker ps
docker imgaes
docker images
docker service ls
docker ps
curl localhost
docker service logs project-stack_backend
cd ..
git add .
git commit -m "DP-9 #comment Fixed Bugs"
git push origin docker
cd bae-cne-sfia2-brief/
touch jenkins-install
vim jenkins-install 
sudo chmod jenkins-install 700
sudo chmod 700 jenkins-install 
./jenkins-install
ls
touch Jenkinsfile
vin Jenkinsfile
vim Jenkinsfile
exit
