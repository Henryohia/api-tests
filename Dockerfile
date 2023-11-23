FROM node:alpine

WORKDIR /user/app

COPY package.json /usr/app/

COPY server.js /usr/app/

# install the current packages
RUN npm install

EXPOSE 3000

# The below command is what happens when you run the container
CMD [ "node", "server.js" ]