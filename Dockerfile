FROM alpine:latest
LABEL MAINTAINER="Ankush Walia"
RUN apk add --update nginx && \
	rm -rf /var/cache/apk/* && \
	mkdir -p /tmp/mginx
EXPOSE 80/TCP
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
