BIN_NAME=golang-cli-template
BIN_PATH=${GOPATH}/bin
VERSION="dev"
GIT_COMMIT=$(shell git rev-parse HEAD)
BUILD_DATE=$(shell date '+%Y-%m-%d-%H:%M:%S')
DOCKER_REGISTRY=
IMAGE_NAME="thazelart/golang-cli-template"

help:
	@echo 'Management commands for golang-cli-template:'
	@echo
	@echo 'Usage:'
	@echo '    make get-deps        runs dep ensure, mostly used for ci.'
	@echo '    make build           Compile the project.'
	@echo '    make docker-build    Compile optimized for alpine linux.'
	@echo '    make docker-push     Push the image to the docker registry.'
	@echo

get-deps:
	go mod download 

build:
	@echo "building ${BIN_NAME} ${VERSION}"
	@echo "GOPATH=${GOPATH}"
	go build -ldflags "-X github.com/${IMAGE_NAME}/internal/cmd/version.version=${VERSION} \
	                   -X github.com/${IMAGE_NAME}/internal/cmd/version.gitCommit=${GIT_COMMIT}  \
	                   -X github.com/${IMAGE_NAME}/internal/cmd/version.buildDate='${BUILD_DATE}'" -o ${BIN_PATH}/${BIN_NAME}

docker-build:
	@echo "building image ${IMAGE_NAME} ${VERSION}"
	@echo "Go version=${GO_VERSION}"
	docker build --build-arg VERSION=${VERSION} --build-arg GIT_COMMIT=$(GIT_COMMIT) -t $(IMAGE_NAME):${VERSION} .

docker-push:
	@echo "Pushing docker image to registry: $(IMAGE_NAME):${VERSION}"
	docker push $(IMAGE_NAME):${VERSION}
