FROM nginx:stable-alpine

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN touch /var/run/nginx.pid && \
  chown -R 998:998 /var/run/nginx.pid && \
  chown -R 998:998 /var/cache/nginx

USER 998

VOLUME /var/www
