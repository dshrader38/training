# Specify a base image
FROM node:alpine

# Set working directory
WORKDIR /usr/app

# Minimize rebuild on source code changes
# Copy to working directory
COPY ./package.json ./

# Install dependencies (if change on previous)
RUN npm install

# Copy files to working directory
COPY ./ ./

# Default command
CMD ["npm", "start"]
