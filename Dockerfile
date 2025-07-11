FROM golang:1.22-alpine

RUN apk add --no-cache git

WORKDIR /app
COPY . .

RUN go mod tidy
RUN go build -o gowa ./src

EXPOSE 3000

CMD ["./gowa"]
