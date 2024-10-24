FROM node:18 as builder

# Set working directory
WORKDIR /build

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the app
RUN npm run build

# Use a lighter image for the final output
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy built assets from the previous stage
COPY --from=builder /build .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
