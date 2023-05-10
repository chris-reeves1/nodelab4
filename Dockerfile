#FROM node:14.16-alpine
FROM node:latest
#WORKDIR /app
#COPY package*.json ./
#RUN npm install
#COPY . .

COPY . .
RUN npm install 
EXPOSE 5000
#CMD ["npm", "start"]
ENTRYPOINT ["npm", "start"]