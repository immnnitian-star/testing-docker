# base  image 
FROM node:20-alpine
# set working directory
WORKDIR /app
# copy package.json and package-lock.json
COPY package*.json ./
# install dependencies
RUN npm install
# copy rest of the application code
COPY . .
# expose port
EXPOSE 5001
# start the application
CMD ["node", "index.js"]
