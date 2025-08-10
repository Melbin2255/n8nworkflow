# Use an official Node.js LTS image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy only package files first (for faster caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application files
COPY . .

# Expose the port your app runs on (default: 3000)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
