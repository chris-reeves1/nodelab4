FROM node:latest
COPY . .
RUN npm install 
EXPOSE 5000
ENTRYPOINT ["npm", "start"]
