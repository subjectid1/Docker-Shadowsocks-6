# Pull base image  
FROM node:latest
  
MAINTAINER crabdave "calorie.david@gmail.com"  
  
# Install npm  
RUN npm install -g shadowsocks 

# modify conf  
RUN sed -i "s/barfoo\!/crabdave123456/g" /usr/local/lib/node_modules/shadowsocks/config.json

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