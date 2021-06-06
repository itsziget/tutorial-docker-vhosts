FROM jwilder/docker-gen:0.7.6

COPY --from=jwilder/nginx-proxy:0.9.0 \
     /app/nginx.tmpl \
     /etc/docker-gen/templates/nginx.tmpl

RUN echo "pkill -HUP nginx" > /notify.sh \
 && chmod +x /notify.sh

CMD [ \
    "-notify", "/notify.sh", \
    "-watch", \
    "/etc/docker-gen/templates/nginx.tmpl", \
    "/etc/nginx/conf.d/default.conf" \
  ]