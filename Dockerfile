FROM node:lts-alpine3.23

WORKDIR /usr/src/app/backend

COPY backend/package*.json ./

RUN npm install

COPY backend/ .

EXPOSE 5000

CMD ["npm", "start"]