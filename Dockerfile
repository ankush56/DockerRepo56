FROM alpine:latest
LABEL MAINTAINER="Ankush Walia"
RUN apk add --update nginx:latest && \
	rm -rf /var/cache/apk/* && \
	mkdir -p /tmp/nginx
EXPOSE 80/TCP
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
