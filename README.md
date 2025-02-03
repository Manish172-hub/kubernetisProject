# kubernetisProject

#check the container is running or no

docker ps -a  --check for actively running conatiner

#once the conatiner is running we can update the container ,by enter in conatiner and install the software as per requirement 

docker exec -it <conatiner-name /id> 

#To create customize our own image which is currently run on docker

docker commit <conatiner-name> <customize-own-name>

Requirement odf the project
1.Go the https://github.com/Manish172-hub/myweb  the repository
2. Create War file for the Application(Perform using jenkins)
3.create the custom image for the war file
4.Now push the image on docker hub
5.Now create yaml file in in which fecth our customer image which is there on docker hub and create the pod for the same.


Prerequiste: Create Docker file which is there in our repo

