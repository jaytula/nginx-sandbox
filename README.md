# nginx Sandbox

- Beginner's Guide https://nginx.org/en/docs/beginners_guide.html
- Nginx at Docker Hub https://hub.docker.com/_/nginx/
- Core Module: https://nginx.org/en/docs/http/ngx_http_core_module.html

## Notes

### Configuration File's Structure

Two types of directives:

- Simple. `[name] [parameters];`
- Block is like a simple directive but ends with `{}`
- Block directives is a called a *context* if it can have other directives inside the braces.
  e.g. `events`, `http`, `server`, `location`

### Serving Static Content

