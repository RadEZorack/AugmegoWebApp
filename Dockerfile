FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./WebApp/package*.json ./
RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY ./WebApp/ ./

EXPOSE 80

RUN npm run build
CMD [ "npm", "run", "start" ]