# Use an official Node.js runtime as a parent image
FROM node:lts-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if present)
# This step is optional for a simple "Hello World" but good practice for larger projects
COPY package*.json ./

# Install any dependencies (not needed for this simple app, but included for completeness)
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run the application
CMD ["node", "app.js"]
