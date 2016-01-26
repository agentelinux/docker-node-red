FROM node:5.5

MAINTAINER agentelinux

# install node-red
RUN npm install -g node-red

WORKDIR /usr/local/lib/node_modules

RUN npm install -g node-red-node-mysql

# expose port
EXPOSE 1880

# Set the default command to execute
# when creating a new container
CMD ["/usr/local/bin/node-red"]
