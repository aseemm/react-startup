FROM node:alpine

WORKDIR /src
COPY package*.json ./
RUN npm install --production
RUN npm install -g create-react-app
RUN npm install -g axios
# RUN npx create-react-app app
# RUN ls -ltr
COPY . .

EXPOSE 3000

# CMD ["npx", "create-react-app", "app"]

WORKDIR /src/app
CMD ["npm", "start"]
