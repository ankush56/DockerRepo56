FROM alpine:latest
LABEL MAINTAINER="Ankush Walia"
RUN apk add --update nginx && \
  mkdir -p /run/nginx && \
  mkdir -p /tmp/nginx
EXPOSE 80/TCP
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
