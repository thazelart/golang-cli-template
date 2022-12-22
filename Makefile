BIN_NAME=golang-cli-template
IMAGE_NAME=thazelart/${BIN_NAME}
BIN_PATH=${GOPATH}/bin
GO_VERSION=1.19

default: help

## Test the goreleaser configuration locally.
goreleaser/test:
	goreleaser --snapshot --skip-publish --rm-dist

## Get this project dependencies.
local/deps:
	go mod tidy
	go install github.com/spf13/cobra-cli@v1.3.0
	go install github.com/goreleaser/goreleaser@latest
	go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.50.1

## Locally run the golang test.
go/test:
	golangci-lint run ./...
	go test ./...
	
## Build locally the go project.
go/build:
	@echo "building ${BIN_NAME}"
	@echo "GOPATH=${GOPATH}"
	go generate ./...
	go build -o ${BIN_PATH}/${BIN_NAME}

## Compile optimized for alpine linux.
docker/build:
	@echo "building image ${IMAGE_NAME}"
	docker build --build-arg GO_VERSION=${GO_VERSION} -t $(IMAGE_NAME):latest .

## Make sure everything is ok before a commit
pre-commit: go/test
	go fmt ./...

## Print his help screen
help:
	@printf "Available targets:\n\n"
	@awk '/^[a-zA-Z\-\_0-9%:\\]+/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
		helpCommand = $$1; \
		helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
	gsub("\\\\", "", helpCommand); \
	gsub(":+$$", "", helpCommand); \
		printf "  \x1b[32;01m%-15s\x1b[0m %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST) | sort -u
	@printf "\n"