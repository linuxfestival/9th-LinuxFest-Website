FROM banian/node

EXPOSE 3000 3001

# ENV NODE_ENV=production

# https://github.com/bower/bower/issues/1752
RUN echo '{ "allow_root": true }' > /root/.bowerrc

# Copies dependencies in seperate layers to improve caching
COPY package.json yarn.lock /usr/src/app/
RUN yarn install

# Copy source
COPY . /usr/src/app/

# Serve command
WORKDIR /usr/src/app
CMD yarn serve
