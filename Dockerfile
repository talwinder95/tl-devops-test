# Using Node Alpine Image for keep image size optimized

FROM node:lts-alpine

# Set the application Directory
WORKDIR  /app

# Copy package json to Docker 
COPY package*.json  ./

# Install Dependicies
RUN npm install

# Copy index file
COPY ./index.js  .

# Expose application to  3000 port

EXPOSE 3000

# Then start our application by running npm command

CMD ["npm",  "start"]



