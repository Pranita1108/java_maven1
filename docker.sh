# update the package list
 sudo apt upgrade -y

# install docker 
sudo amazon-linux-extras enable docker
sudo yum install -y docker

# Add both users to the sudo group (so they can run admin commands)
sudo usermod -aG sudo ubuntu
sudo usermod -aG sudo jenkin

# apply new group setting immediately
newgrp docker

# set correct permission for the docker socket to allow docker group member to access it
sudo chmod 660 /var/run/docker.sock
sudo chown root:docker /var/run/docker.sock

# restart docker service to apply changes
sudo systemct1 restart docker 

#verify installation
docker -version
