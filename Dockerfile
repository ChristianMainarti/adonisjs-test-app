FROM node:20

WORKDIR /home/node/app

COPY --chown=node:node ./package*.json ./

RUN npm install yarn

RUN yarn install --silent --frozen-lockfile

COPY . .

RUN node ace build --production --ignore-ts-errors

EXPOSE 9229 3333

CMD ["dumb-init", "node","server.js"]
