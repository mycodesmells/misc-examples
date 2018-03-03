FROM golang:1.10-stretch

COPY . ${GOPATH}/src/github.com/mycodesmells/misc-examples/docker/multi-stage

WORKDIR ${GOPATH}/src/github.com/mycodesmells/misc-examples/docker/multi-stage

RUN go test -race ./...
RUN CGO_ENABLED=0 go build -a -installsuffix cgo -o /dockerapp main.go

# end of first stage, beginning of the second one
FROM alpine:3.7

COPY --from=0 /dockerapp /dockerapp
CMD ["/dockerapp"]