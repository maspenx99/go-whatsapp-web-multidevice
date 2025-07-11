FROM golang:1.22-alpine
RUN apk add --no-cache git

WORKDIR /app

# Clone source dulu secara manual
RUN git clone https://github.com/maspenx99/go-whatsapp-web-multidevice.git .
WORKDIR /app

# Pindah ke folder src jika go.mod ada di sana
WORKDIR /app/src

RUN go mod tidy
RUN go build -o /app/gowa

EXPOSE 3000
CMD ["/app/gowa"]
