########  Install Docker and Docker-compose  ########

# amazon-linux-extras install docker -y

# systemctl start docker.service

# systemctl enable docker.service

# curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

# chmod +x /usr/local/bin/docker-compose

# docker-compose version

# docker --version

# yum install -y git

# git clone https://github.com/infracloudio/csvserver.git

# cd csvserver/solution/

# docker pull infracloudio/csvserver:latest

# docker pull prom/prometheus:v2.22.0

# docker images

# vim gencsv.sh

#!/bin/bash
touch inputFile
for i in `seq 10`;
do
    RANDOM=`expr $$ / $i`
	echo "$i , $RANDOM " >> inputFile
done

# chmod 755 gencsv.sh

# ./gencsv.sh

# chmod 777 inputFile


################   Part I  ################

# docker run -d -v /root/csvserver/solution/inputFile:/csvserver/inputdata infracloudio/csvserver

# docker container ps  >> To veriy the running container ID

# docker container exec -it "container ID" /bin/bash

Once you enter in container verify the port;

# netstat -tunlp

exit from the container, then stop and remove;

# docker container stop "container ID"

# docker container rm "container ID"

# docker run -d -v /root/csvserver/solution/inputFile:/csvserver/inputdata -p 9393:9300 infracloudio/csvserver

Now open browser and check the output of the csv server container http://server-IP:9393
