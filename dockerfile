FROM node:21-alpine3.19

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
# COPY package-lock.json ./ No utilizamos debido a que lo realizamos con yarn
RUN yarn install

COPY . .

# RUN npx prisma migrate dev
# RUN npx prisma generate

EXPOSE 3001
