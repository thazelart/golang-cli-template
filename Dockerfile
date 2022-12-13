ARG GO_VERSION=1.19

# Build stage
FROM golang:${GO_VERSION} AS builder

ARG GIT_COMMIT
ARG VERSION

ENV GO111MODULE=auto
ENV CGO_ENABLED=0

WORKDIR $GOPATH/src/github.com/thazelart/golang-cli-template
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN make build
RUN echo "nonroot:x:65534:65534:Non root:/:" > /etc_passwd


# Final stage
FROM scratch

LABEL maintainer="Thibault HAZELART thazelart@gmail.com"

COPY --from=builder /go/bin/golang-cli-template /bin/golang-cli-template
COPY --from=builder /etc_passwd /etc/passwd

USER nonroot

ENTRYPOINT [ "golang-cli-template" ]
CMD [ "version" ]
