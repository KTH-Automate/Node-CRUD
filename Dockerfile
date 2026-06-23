FROM node:latest as build

WORKDIR /app

COPY . .

RUN npm install

# New container is created here
FROM node:23.6.1-alpine

COPY --from=build /app/node_modules .
COPY --from=build /app/package.json .
COPY --from=build /app/src .

CMD ["npm", "run", "dev"]