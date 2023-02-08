# Use an existing image as the base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the application code into the container
COPY . .

# Install the required dependencies
RUN npm install

# Expose port 8080 to the host machine
EXPOSE 8080

# Define the command to run when the container starts
CMD ["npm", "start"]
