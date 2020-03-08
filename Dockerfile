FROM node:12.14

# Create app directory
WORKDIR /usr/src/app

# Copy all files of the project to the docker
COPY . .

# Now install all project dependencies
RUN npm i

# Run tests
RUN npm run test

# Run app
RUN node index.js