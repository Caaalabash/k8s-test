FROM node:lts-alpine
WORKDIR /
COPY backend/package.json /package.json
COPY backend/package-lock.json /package-lock.json
RUN npm install --registry https://registry.npm.taobao.org
COPY deploy/backend/entry_point.sh /
COPY /backend /
