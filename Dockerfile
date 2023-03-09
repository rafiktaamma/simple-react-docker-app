#Stage 1
FROM node:18-alpine
WORKDIR /app
COPY package.json .
COPY yarn.lock . 
RUN yarn install
ENV REACT_APP_MY_APP_SLOT='default dockerfile value'
COPY . .
EXPOSE 80
RUN yarn run start

