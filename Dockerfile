FROM node:20.11.0-alpine3.18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application files
COPY . .

# Expose the port your app will listen on
EXPOSE 3000

# Define the command to run your app
CMD ["node", "server.js"]