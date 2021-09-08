#!/bin/sh

# Watch template folder for changes. If there is a change:
# - Run 20-envsubst-on-templates.sh
# - Reload nginx `with nginx -s reload`

watch() {
 local template_dir="${NGINX_ENVSUBST_TEMPLATE_DIR:-/etc/nginx/templates}"  

  while inotifywait --exclude .swp -e modify -r $template_dir; do
    /docker-entrypoint.d/20-envsubst-on-templates.sh
    nginx -s reload
  done
}

watch &