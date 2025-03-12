FROM registry.access.redhat.com/ubi9/nodejs-18:9.5
COPY package.json ./
RUN npm install
COPY . /opt/app-root/src
ENV PORT 8080
CMD ["npm", "start"]
