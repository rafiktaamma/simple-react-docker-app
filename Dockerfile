#Stage 1
FROM node:17-alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
ARG REACT_APP_MY_APP_SLOT
ENV REACT_APP_MY_APP_SLOT=$REACT_APP_MY_APP_SLOT
COPY . .
RUN npm run build

#Stage 2
FROM nginx:1.19.0
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/build . 
ENTRYPOINT [ "nginx","-g","daemon off;"]