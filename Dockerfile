FROM node:8

WORKDIR /app/website

EXPOSE 3000 35729
COPY ./docs /app/docs
COPY ./website /app/website
RUN cd /app/website && yarn install

CMD ["yarn", "start"]
