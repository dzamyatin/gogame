FROM golang:1.24 as development

WORKDIR /app

COPY .. .
RUN go mod download
RUN go build -o app

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/app /app/

CMD ["/app/app"]