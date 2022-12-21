FROM vivekayawale/nginx:latest
LABEL maintainer="vivek"
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
