<!-- BEGIN __DO_NOT_INCLUDE__ -->
<p align="center"><img src="https://gist.githubusercontent.com/thazelart/5be06c101f53079b9914d6efd867e690/raw/1db944ea6c82dde17ad24f2288eaeafe4013dafc/golang-cli-template.v2.png" alt="Logo" height="120" /></p>
<!-- END __DO_NOT_INCLUDE__ -->
<h1 align="center"> golang-cli-template</h1>

<p align="center">
  <a href="https://github.com/thazelart/golang-cli-template/releases" rel="nofollow"><img alt="GitHub release (latest SemVer including pre-releases)" src="https://img.shields.io/github/v/release/thazelart/golang-cli-template?include_prereleases"></a>
  <a href="https://github.com/thazelart/golang-cli-template/actions/workflows/release.yaml" rel="nofollow"><img src="https://github.com/thazelart/golang-cli-template/actions/workflows/release.yaml/badge.svg" alt="goreleaser" style="max-width:100%;"></a>
  <a href="https://github.com/gojp/goreportcard/blob/master/LICENSE" rel="nofollow"><img src="https://img.shields.io/badge/license-Apache 2.0-blue.svg" alt="License Apache 2.0" style="max-width:100%;"></a>
  <a href="https://pkg.go.dev/github.com/thazelart/golang-cli-template" rel="nofollow"><img src="https://pkg.go.dev/badge/github.com/thazelart/golang-cli-template.svg" alt="Go reference" style="max-width:100%;"></a>
  <a href="https://goreportcard.com/report/github.com/thazelart/golang-cli-template" rel="nofollow"><img src="https://goreportcard.com/badge/github.com/thazelart/golang-cli-template" alt="Go report card" style="max-width:100%;"></a>
</p>
<br/>

An opinionated template for new Golang cli projects.

<!-- BEGIN __DO_NOT_INCLUDE__ -->

It includes:

- The base of a cli using `spf13/cobra` (including the `version` command)
- Everything needed to test using `stretchr/testify`
- The optimized and secured Dockerfile
- Templating engine using `rantav/go-archetype`
- Basic GitHub actions
- Release management using `goreleaser/goreleaser`:
  - Generate the completions scripts
  - Generate the man pages
  - Push images for `homebrew`, `apt`, `yum` and `apk`
  - Generate the `.rpm`, `.deb` and `.apk` package files

## Init your own project using that template

We are using [rantav/go-archetype](https://github.com/rantav/go-archetype) to enable the creation of new projects from that template.

```bash
$ go install github.com/rantav/go-archetype@latest

$ go-archetype transform --transformations .go-archetype.yaml --source . --destination /path/to/destination
# answer the questions

$ cd /path/to/destination

# init your git repository and you're done.
```

As you may have notices the `LICENSE` file is missing. Please add the according Licence file. You can find most of the licenses [here](https://github.com/licenses/license-templates/tree/master/templates).

Enjoy developing your awesome cli.

<!-- END __DO_NOT_INCLUDE__ -->

## Install

<details>
  <summary><h3>homebrew tap</h3></summary>

```bash
brew install thazelart/tap/golang-cli-template
```

</details>

<details>
  <summary><h3>apt</h3></summary>

```bash
echo 'deb [trusted=yes] https://apt.fury.io/thazelart/ /' | sudo tee /etc/apt/sources.list.d/thazelart.list
sudo apt update
sudo apt install golang-cli-template
```

</details>

<details>
  <summary><h3>yum</h3></summary>

```bash
echo '[thazelart]
name=Gemfury thazelart repository
baseurl=https://yum.fury.io/thazelart/
enabled=1
gpgcheck=0' | sudo tee /etc/yum.repos.d/thazelart.repo
sudo yum install goreleaser
```

</details>

<details>
  <summary><h3>deb, rpm and apk packages</h3></summary>
Download the .deb, .rpm or .apk packages from the [release page](https://github.com/thazelart/golang-cli-template/releases) and install them with the appropriate tools.
</details>

<details>
  <summary><h3>go install</h3></summary>

```bash
go install github.com/thazelart/golang-cli-template@latest
```

</details>

<details>
  <summary><h3>from the GitHub releases</h3></summary>

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

</details>

<details>
  <summary><h3>manually</h3></summary>

```bash
$ git clone github.com/thazelart/golang-cli-template
$ cd golang-cli-template
$ go generate ./...
$ go install
```

</details>

<!-- BEGIN __DO_NOT_INCLUDE__ -->

## Logo

This logo is based on the `create-go-app` logo. Please find all information [here](https://github.com/create-go-app/cli/wiki/Logo).

<!-- END __DO_NOT_INCLUDE__ -->
