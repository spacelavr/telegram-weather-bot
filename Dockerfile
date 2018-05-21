FROM golang:1.10.2

WORKDIR /go/src/telegram-weather-bot
COPY . .

RUN apk update && \
    apk upgrade && \
    apk add git

RUN go get -u github.com/golang/dep/cmd/dep
RUN dep ensure
RUN go build

CMD ["telegram-weather-bot"]
