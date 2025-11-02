# base image
FROM node:18-alpine
# set working directory
WORKDIR /app
# copy the dependencies
COPY package*.json .
# Install dependencies mentioned in package json
RUN npm install
# copy the source code to container
COPY . .
# expose port
EXPOSE 3020
# run the application
CMD ["npm" , "start"]

