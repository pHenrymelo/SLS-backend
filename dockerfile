FROM node:22-alpine

RUN npm install -g pnpm

WORKDIR /usr/app

COPY package*.json ./
RUN pnpm install

COPY . .

EXPOSE 4130

CMD [ "sh", "-c", "pnpm prisma migrate deploy && pnpm start"]