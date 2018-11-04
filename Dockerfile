FROM alpine:latest
LABEL MAINTAINER="Mr. Ankush Walia"
RUN apk add --update nginx && \
  mkdir -p /run/nginx && \
  mkdir -p /tmp/nginx
  mkdir -p /tmp/ankush
EXPOSE 80/TCP
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
