# kubernetisProject

#check the connebatiner is running or no

docker ps -a  --check for actively running conatiner

#once the conatiner is running we can update the container ,by enter in conatiner and install the software as per requirement 

docker exec -it <conatiner-name /id> 

#To create customize our own image which is currently run on docker

docker commit <conatiner-name> <customize-own-name>
