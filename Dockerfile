# Build stage
FROM node:16.15.0-stretch-slim AS builder
WORKDIR /app
COPY . .
RUN yarn install && yarn build

# NGINX stage
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=builder /app/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]