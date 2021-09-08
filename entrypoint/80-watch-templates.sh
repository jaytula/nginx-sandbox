#!/bin/sh

# Watch template folder for changes. If there is a change:
# - Run 20-envsubst-on-templates.sh
# - Reload nginx `with nginx -s reload`

function watch {
  while inotifywait --exclude .swp -e modify -r templates; do
    /docker-entrypoint.d/20-envsubst-on-templates.sh
    nginx -s reload
  done
}

watch &