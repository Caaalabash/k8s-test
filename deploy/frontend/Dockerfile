FROM node:lts-alpine as builder
COPY frontend/package.json /package.json
COPY frontend/package-lock.json /package-lock.json
RUN npm install --registry https://registry.npm.taobao.org
COPY /frontend /
RUN npm run build

FROM nginx:alpine
WORKDIR /
COPY deploy/frontend/site.template /etc/nginx/conf.d/
COPY deploy/frontend/entry_point.sh /
COPY --from=builder /dist /dist
