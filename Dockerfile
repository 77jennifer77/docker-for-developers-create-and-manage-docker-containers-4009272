# Use official Node.js image
FROM node:current-alpine3.23

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY app/package*.json ./
# npm ci (clean install) is a command similar to npm install, but it is designed specifically for automated environments like continuous integration (CI) and deployment pipelines, or any situation where a clean, consistent, and reproducible installation of project dependencies is required 
RUN npm ci

# Copy application code
COPY app .

# Start the application
CMD ["npm", "start"]