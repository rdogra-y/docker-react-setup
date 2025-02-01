# Use the official Node.js image as the base
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /Rakshita_Dogra_site

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install -g create-react-app && create-react-app codin1 && cd codin1 && npm install

# Set the working directory inside the React app
WORKDIR /Rakshita_Dogra_site/codin1

# Expose port 7775 to access the React app
EXPOSE 7775

# Start the React app
CMD ["npm", "start"]
