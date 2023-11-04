# use Node.js version 18
FROM node:18-alpine

# create new folder app
RUN mkdir -p /app  

# working directory is app
WORKDIR /app

# copy application code in app folder
COPY ./webapp/package.json ./webapp/yarn.lock ./

#install application dependencies 
RUN yarn install --frozen-lockfile

# Copy the rest of the application code
COPY ./webapp ./

# command to start application
CMD ["yarn", "start"]

#expose port 3000
EXPOSE 3000
