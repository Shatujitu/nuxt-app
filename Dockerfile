FROM node:16-alpine

WORKDIR /app

RUN apk update && apk upgrade

COPY ./package.json /app

RUN yarn install

COPY . .

EXPOSE 3000

ENV HOST=0.0.0.0

CMD ["yarn", "dev"]
