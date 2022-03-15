BIN_NAME=golang-cli-template
IMAGE_NAME=thazelart/${BIN_NAME}
BIN_PATH=${GOPATH}/bin
GO_VERSION=1.17

help:
	@echo 'Management commands for golang-cli-template:'
	@echo
	@echo 'Usage:'
	@echo '    make get-deps            Runs dep ensure, mostly used for ci.'
	@echo '    make build               Compile the project.'
	@echo '    make docker-build        Compile optimized for alpine linux.'
	@echo '    make test-goreleaser     Ensure the goreleaser config is valid.'
	@echo

test-goreleaser:
	goreleaser --snapshot --skip-publish --rm-dist

get-deps:
	go mod download

build:
	@echo "building ${BIN_NAME}"
	@echo "GOPATH=${GOPATH}"
	go generate ./...
	go build -o ${BIN_PATH}/${BIN_NAME}

docker-build:
	@echo "building image ${IMAGE_NAME}"
	docker build --build-arg GO_VERSION=${GO_VERSION} -t $(IMAGE_NAME):latest .
