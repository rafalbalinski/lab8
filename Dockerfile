FROM node:alpine AS builder
ENV NODE_OPTIONS=--openssl-legacy-provider
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx AS deploy
COPY --from=builder /app/build /usr/share/nginx/html