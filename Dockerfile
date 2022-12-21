FROM nginx:alpine

LABEL maintainer="ReliefMelone"


COPY index.html /usr/share/nginx/html

# Configure NGINX
COPY ./openshift/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./openshift/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

RUN chgrp -R root /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R 770 /var/cache/nginx /var/run /var/log/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
