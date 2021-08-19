FROM node:14.17.4

RUN mkdir -p /home/node/web/node_modules && chown -R node:node /home/node/web

WORKDIR /home/node/web
COPY --chown=node:node package.json yarn.* ./

USER node
RUN yarn

COPY --chown=node:node . .
RUN yarn build

CMD ["yarn", "serve"]

EXPOSE 3000
