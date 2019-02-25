#!/bin/bash
docker volume create jenkins_home
docker-compose up -d
echo "Secrets key: $(docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword)" 
