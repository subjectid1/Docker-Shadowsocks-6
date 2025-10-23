# Pull base image  
FROM docker.io/node:12.16.3
  
MAINTAINER crabdave "calorie.david@gmail.com"  
  
# Install npm  
RUN npm install -g shadowsocks 

# modify conf  


# Expose ports.  
EXPOSE 8388  

# Usage: USER [UID]
USER root

# Usage: WORKDIR /path
WORKDIR ~/

# add daemon script
ADD  start.sh /root/

#authorization
RUN chmod 755 /root/start.sh

# modify conf
ENTRYPOINT ["/root/start.sh"]
