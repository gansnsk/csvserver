    The CSV Server assignment by www.infracloud.io

########  Install Docker and Docker-compose  ########

# amazon-linux-extras install docker -y

# systemctl start docker.service

# systemctl enable docker.service

# curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose

# chmod +x /usr/local/bin/docker-compose

# docker-compose version

# docker --version

# yum install -y git

# git clone https://github.com/gansnsk/csvserver

# cd csvserver/solution/

# docker pull infracloudio/csvserver:latest

# docker pull prom/prometheus:v2.22.0

# docker-compose up -d

# docker container ps

Now open the browser and check the links;

http://server-IP:9393 >> To check the CSV Server output;

http://server-IP:9090 >> To check the Prometheus graph; under the same graph you can check Status >> Targets for added CSV Server configuration in prometheus.yml file;

http://server-IP:9393/metrics >> To check the CSV Server container metrics;

Type csvserver_records in the query box of Prometheus. Click on Execute and then switch to the Graph tab. 

The Prometheus instance should be accessible at http://server-IP:9090, and it should show a straight line graph with value 10 (consider shrinking the time range to 5m).

##################### Setup Completed ##########################
