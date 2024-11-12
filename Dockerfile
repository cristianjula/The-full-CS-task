FROM node:18

WORKDIR /The-full-CS-task

COPY package*.json ./


RUN npm install

COPY . .


EXPOSE 3000

CMD ["npm", "start"]