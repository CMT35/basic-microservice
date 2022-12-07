# Define base image
FROM node:14.18.2-alpine

# Define working directory
WORKDIR /app

# Copy client and backend to the working directory
COPY client backend ./

# Install dependencies 
RUN npm install

# copy rest of the app to the working directory
COPY . .

# expose port 8000
EXPOSE 8000

# Define entry point
CMD [ "npm", "start" ]


