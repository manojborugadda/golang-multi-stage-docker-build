##################
#BASE IMAGE
##################

FROM ubuntu:latest AS build

RUN apt-get update && apt-get install -y golang-go

ENV GO111MODULE=on

COPY . .

# Build the single-file app directly (no go.mod required for this simple program)
RUN CGO_ENABLED=0 go build -o /app calculator.go

ENTRYPOINT ["/app"]