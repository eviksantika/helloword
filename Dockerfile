FROM golang:1.15-buster AS build

# Copy the local package files to the container's workspace.
RUN mkdir -p /opt
WORKDIR /opt
COPY . .

# Build go apps
RUN CGO_ENABLED=0 go build -o helloword main.go


FROM alpine:latest
# Export Listen port
EXPOSE 9099


# Copy file from build image
COPY --from=build /opt/helloword /opt
ENTRYPOINT /opt/helloword
