# base image
FROM node:10.16.3-jessie

# set working directory
WORKDIR /opt/app

# install and cache app dependencies
COPY package.json ./
RUN npm install

COPY . .

# start app
CMD ["npm", "run", "dev"]