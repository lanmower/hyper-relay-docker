FROM node:16
WORKDIR /usr/src/app
RUN apt update
RUN apt install git -y
RUN npm install --save hyper-relay -g
CMD [ "hyper-tcp-relay-server", "$topic", "$port" ]
