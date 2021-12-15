FROM node:12-alpine As appbuild
COPY . .
RUN npm install
EXPOSE 8080
CMD [ "node", "server.js" ]