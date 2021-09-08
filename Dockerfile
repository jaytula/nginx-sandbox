FROM nginx

COPY entrypoint/20-envsubst-on-templates.sh /docker-entrypoint.d/20-envsubst-on-templates.sh
RUN chmod 775 /docker-entrypoint.d/20-envsubst-on-templates.sh

COPY nginx.conf /etc/nginx/nginx.conf