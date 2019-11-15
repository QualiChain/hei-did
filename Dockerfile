FROM node:10.16.1

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY  registerContract_script.js ./

CMD [ "npm", "start" ]