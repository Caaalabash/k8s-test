FROM node:lts-alpine
COPY backend/package.json /package.json
COPY backend/package-lock.json /package-lock.json
RUN npm install --registry https://registry.npm.taobao.org
COPY /backend /
