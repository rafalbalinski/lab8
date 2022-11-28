FROM node:alpine

WORKDIR '/app'
ENV NODE_OPTIONS=--openssl-legacy-provider
COPY package.json .
RUN npm install

COPY . .

CMD ["npm", "run", "start"]