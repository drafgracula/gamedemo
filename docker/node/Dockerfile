FROM node:20

WORKDIR /var/www/game

COPY ./game/package*.json ./

RUN npm install

COPY ./game /var/www/game

RUN pwd

CMD ["npm", "watch"]