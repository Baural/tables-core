FROM golang:1.22.1 AS build_stage

WORKDIR /app
COPY . .
RUN GO111MODULE="on" CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app ./cmd


ENV TZ="Asia/Atyrau"
EXPOSE 8080
CMD ["./app"]


