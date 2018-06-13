FROM node:8.7-alpine

# In case some dependencies need these
# RUN apk add --no-cache --virtual .gyp \
#         python \
#         make \
#         g++

COPY ./app /app

WORKDIR /app

RUN yarn install

ENTRYPOINT [ "npm", "run", "dev" ]