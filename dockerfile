FROM golang:alpine AS builder

WORKDIR /app

RUN apk add --no-cache git

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY . .

RUN go build -o app .

FROM alpine:latest

WORKDIR /root/

COPY --from=builder /app/app .
COPY .env ./

EXPOSE 3000

CMD ["./app"]