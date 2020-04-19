FROM nginx:1.17-alpine

COPY default.template /etc/nginx/conf.d/
COPY . /usr/share/nginx/html

CMD envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'
