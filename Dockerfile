FROM golang:latest

MAINTAINER Maintainer

ENV GIN_MODE=release
ENV PORT=3004


WORKDIR /go/src/go-docker-dev.to

COPY src /go/src/go-docker-dev.to/src
COPY templates /go/src/go-docker-dev.to/templates


#RUN go get -u github.com/gin-gonic/gin

COPY dependencies /go/src


RUN go build go-docker-dev.to/src/app

EXPOSE $PORT

ENTRYPOINT ["./app"]
