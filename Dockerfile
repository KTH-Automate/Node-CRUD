FROM node:alpine3.23

WORKDIR /app

COPY . .

RUN npm install

CMD ["npm", "run", "dev"]