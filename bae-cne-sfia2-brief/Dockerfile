FROM node:10-alpine as build
WORKDIR /build
COPY . .
COPY duo-project . 
FROM nginx:latest
WORKDIR /app
COPY nginx/nginx.conf /etc/nginx/nginx.conf
