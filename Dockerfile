FROM node:lts
WORKDIR /app
COPY package.json /app
COPY . /app
RUN npm install -g gatsby-cli
RUN npm install
RUN npm install -g yarn
RUN yarn
RUN npm run build
RUN npm run serve