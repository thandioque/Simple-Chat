FROM node:14.19.3-alpine3.14
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
    