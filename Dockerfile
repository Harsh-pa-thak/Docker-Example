FROM node:lts-alpine3.23

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=admin

WORKDIR /usr/src/app/backend

COPY . /usr/src/app

RUN npm install

CMD ["npm", "start"]