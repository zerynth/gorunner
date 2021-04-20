FROM golang:1.13-alpine

RUN apk update && apk --no-cache add docker gcc libc-dev make git openssh


RUN go get -d gotest.tools/gotestsum
RUN go build $GOPATH/src/gotest.tools/gotestsum


