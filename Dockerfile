FROM nginx

COPY entrypoint /docker-entrypoint.d
RUN chmod 775 /docker-entrypoint.d/*

RUN apt-get update
RUN apt-get install -y inotify-tools

COPY nginx.conf /etc/nginx/nginx.conf