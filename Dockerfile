FROM banian/node

EXPOSE 3000 3001

# ENV NODE_ENV=production

# Copies dependencies in seperate layers to improve caching
COPY package.json yarn.lock /usr/src/app/
RUN yarn install

# Copy source
COPY . /usr/src/app/

# Build step
# TODO: Is this required?

# Serve command
CMD yarn run gulp -- serve
