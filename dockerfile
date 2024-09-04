FROM node

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

RUN npm start

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]