FROM node:14-alpine

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy built files from the GitHub Actions workspace
COPY dist ./dist

# Expose port
EXPOSE 3000

# Command to run the application
CMD [ "node", "dist/index.js" ]
