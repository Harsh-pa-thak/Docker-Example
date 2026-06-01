from node:lts-alpine3.23

ENV MONGO_DB_USERNAME=admin\
    MONGO_DB_PWD=admin

RUN mkdir -p /usr/src/app

COPY  . /usr/src/app

CMD ["cd", "/usr/src/app/backend", "&&", "npm", "install", "&&", "npm", "start"]