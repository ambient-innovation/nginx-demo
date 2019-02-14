FROM nginx

LABEL maintainer="devops@ambient-innovation.com"

COPY index.html /usr/share/nginx/html/index.html
