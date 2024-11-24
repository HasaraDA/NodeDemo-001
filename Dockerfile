# Use an official Node.js image as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package files first to install dependencies (leveraging Docker cache)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
