FROM golang:1.10-stretch

COPY . ${GOPATH}/src/github.com/mycodesmells/misc-examples/docker/multi-stage

WORKDIR ${GOPATH}/src/github.com/mycodesmells/misc-examples/docker/multi-stage

RUN go test -race ./...
RUN CGO_ENABLED=0 go build -a -installsuffix cgo -o /dockerapp main.go

CMD ["/dockerapp"]
