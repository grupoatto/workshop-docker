FROM node:14.17.4-alpine

WORKDIR /home/node/api

COPY package.json yarn.* ./
RUN yarn

COPY . .
CMD ["yarn", "start"]

EXPOSE 3000
