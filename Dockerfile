#Stage 1
FROM node:18-alpine as builder
WORKDIR /app
COPY package.json .
COPY yarn.lock . 
RUN yarn install
ARG REACT_APP_MY_APP_SLOT
ENV REACT_APP_MY_APP_SLOT=$REACT_APP_MY_APP_SLOT
COPY . .
RUN yarn run build

#Stage 2
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/build . 
ENTRYPOINT [ "nginx","-g","daemon off;"]