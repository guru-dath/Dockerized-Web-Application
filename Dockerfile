# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY ./app.js /usr/src/app/app.js
COPY ./public /usr/src/app/public

# Expose a port on which your application will listen
EXPOSE 3000

# Define the command to run your application
CMD ["node", "app.js"]

