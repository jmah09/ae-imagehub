FROM node:8.9.2-alpine

WORKDIR /integration

COPY package*.json ./

RUN npm install

COPY index.js .
COPY data .

CMD [ "npm", "test" ]
