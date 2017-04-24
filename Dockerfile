FROM node

ADD . /app
RUN chown -R node:node /app

USER node
WORKDIR /app

EXPOSE 3000 3001

RUN npm install

CMD npm run gulp -- serve
