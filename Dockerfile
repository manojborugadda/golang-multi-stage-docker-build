#################
# Base image for building the application
#################

FROM ubuntu:latest AS build

RUN apt-get update && apt-get install -y golang-go

ENV GO111MODULE=on

COPY . .

# Build the single-file app directly (no go.mod required for this simple program)
# creating the binary in the /app directory of the container
RUN CGO_ENABLED=0 go build -o /app calculator.go

###################################
# here the magic of multistage build starts
#####################################

# Scratch distroless image is the smallest possible size for the final image, as it only contains the compiled binary and no OS layer
FROM scratch 

#copy the compiled binary from the build stage
COPY --from=build /app /app

#set the entry point for the container to run the binary
ENTRYPOINT ["/app"]
