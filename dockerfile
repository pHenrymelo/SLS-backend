FROM node:18-alpine as develop

RUN npm install -g pnpm

WORKDIR /usr/app

COPY package*.json ./
RUN pnpm install

COPY . .

EXPOSE 4130 

RUN pnpm migrate