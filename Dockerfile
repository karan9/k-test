# Base Image
FROM node:16

# Create application directory
WORKDIR /usr/src/app

# Copy dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app soauce
COPY . .

# Expose the port
EXPOSE 8080

# Run the code
CMD ["node", "server.js"]

