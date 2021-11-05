FROM alpine:latest
RUN apk update
RUN apk upgrade
RUN apk add bash
WORKDIR /app
COPY test-with-objects.json /app/
COPY sender.sh /app/
CMD ["/app/sender.sh"]