FROM node:16

# Create and set the working directory
WORKDIR /app

# Clone the repository quietly to avoid Northflank stderr failure
RUN git clone --quiet https://github.com/TheShadowfun/Kahev6itlus . 

# Install dependencies
RUN npm install

# Build the Next.js application
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
