FROM node:16
WORKDIR /usr/src/app
ENV port=8080
ENV topic=topic
RUN apt update
RUN apt install git -y
RUN npm install --save hyper-relay -g
CMD [ "hyper-tcp-relay-server", "$port", "127.0.0.1","$topic" ]
