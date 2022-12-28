# Install

You can install the pre-compiled binary (in several ways), use Docker or compile from source (when on OSS).

Below you can find the steps for each of them.

## Install the pre-compiled binary

=== "homebrew tap"

    ```bash
    brew install thazelart/tap/golang-cli-template
    ```

=== "apt"

    ```bash
    echo 'deb [trusted=yes] https://apt.fury.io/thazelart/ /' | sudo tee /etc/apt/sources.list.d/thazelart.list
    sudo apt update
    sudo apt install golang-cli-template
    ```

=== "yum"

    ```bash
    echo '[thazelart]
    name=Gemfury thazelart repository
    baseurl=https://yum.fury.io/thazelart/
    enabled=1
    gpgcheck=0' | sudo tee /etc/yum.repos.d/thazelart.repo
    sudo yum install goreleaser
    ```

## deb, rpm and apk packages

Download the .deb, .rpm or .apk packages from the [release page](https://github.com/thazelart/golang-cli-template/releases) and install them with the appropriate tools.

## Manually

=== "go install"

    ```bash
    go install github.com/thazelart/golang-cli-template@latest
    ```

=== "Released tar file"

    Download the pre-compiled binaries from the [release page](https://github.com/thazelart/golang-cli-template/releases) page and copy them to the desired location.
    ```bash
    $ VERSION=v1.0.0
    $ OS=Linux
    $ ARCH=x86_64
    $ TAR_FILE=golang-cli-template_${OS}_${ARCH}.tar.gz
    $ wget https://github.com/thazelart/golang-cli-template/releases/download/${VERSION}/${TAR_FILE}
    $ sudo tar xvf ${TAR_FILE} golang-cli-template -C /usr/local/bin
    $ rm -f ${TAR_FILE}
    ```

=== "manually"

    ```bash
    $ git clone github.com/thazelart/golang-cli-template
    $ cd golang-cli-template
    $ go generate ./...
    $ go install
    ```
