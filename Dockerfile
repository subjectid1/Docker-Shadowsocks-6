# Pull base image  
FROM node:18
  
MAINTAINER crabdave "calorie.david@gmail.com"  
  
# Install npm  
RUN npm install -g shadowsocks 

# modify conf  
RUN sed -i "s/8388/80/g" /usr/local/lib/node_modules/shadowsocks/config.json
RUN sed -i "s/barfoo\!/notfre/g" /usr/local/lib/node_modules/shadowsocks/config.json

# Expose ports.  
EXPOSE 80

# Usage: USER [UID]
USER root

# Usage: WORKDIR /path
WORKDIR ~/

 

 

# modify conf
ENTRYPOINT ["/root/start.sh"]
