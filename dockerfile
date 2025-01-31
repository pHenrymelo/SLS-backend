FROM node:22-alpine

RUN npm install -g pnpm

WORKDIR /usr/app

COPY package*.json ./
RUN pnpm install

COPY . .

RUN npx prisma migrate deploy

EXPOSE 4130

CMD [ "pnpm", "start" ]