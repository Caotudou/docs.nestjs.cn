FROM node:18 as builder

RUN mkdir -p /app
WORKDIR /app
COPY ./ /app
RUN ls
RUN npm install -g yarn --force
RUN yarn
RUN yarn global add pm2


EXPOSE 4000
CMD ["pm2-runtime","ecosystem.config.js"]