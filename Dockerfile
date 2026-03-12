FROM node:11

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY . .

EXPOSE 8888

CMD ["node","app.js"]