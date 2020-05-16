FROM golang:1.14.2-alpine

WORKDIR /todo
ADD . /todo

RUN apk update && \
    apk add --no-cache git && \
    go get github.com/go-sql-driver/mysql && \
    go get github.com/labstack/echo/middleware && \
    go get github.com/jinzhu/gorm

CMD ["go", "run", "./src/main/main.go"]