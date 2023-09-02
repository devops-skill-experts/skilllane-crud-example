FROM node:18

# Create app directory
WORKDIR /usr/src

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY server.js ./

RUN npm install

WORKDIR /usr/src/app
COPY ./app .

EXPOSE 8080
CMD [ "node", "/usr/src/server.js" ]
