<!-- BEGIN __DO_NOT_INCLUDE__ -->
<p align="center"><img src="https://gist.githubusercontent.com/thazelart/5be06c101f53079b9914d6efd867e690/raw/1db944ea6c82dde17ad24f2288eaeafe4013dafc/golang-cli-template.v2.png" alt="Logo" height="120" /></p>
<!-- END __DO_NOT_INCLUDE__ -->
<h1 align="center"> golang-cli-template</h1>

<p align="center">
  <a href="https://github.com/thazelart/golang-cli-template/releases" rel="nofollow">
    <img alt="GitHub release (latest SemVer including pre-releases)" src="https://img.shields.io/github/v/release/thazelart/golang-cli-template?include_prereleases">
  </a>

  <a href="https://github.com/thazelart/golang-cli-template/actions/workflows/release.yaml" rel="nofollow">
    <img src="https://github.com/thazelart/golang-cli-template/actions/workflows/release.yaml/badge.svg" alt="goreleaser" style="max-width:100%;">
  </a>

  <a href="https://pkg.go.dev/github.com/thazelart/golang-cli-template" rel="nofollow">
    <img src="https://pkg.go.dev/badge/github.com/thazelart/golang-cli-template.svg" alt="Go reference" style="max-width:100%;">
  </a>

  <a href="https://github.com/gojp/goreportcard/blob/master/LICENSE" rel="nofollow">
    <img src="https://img.shields.io/badge/license-Apache 2.0-blue.svg" alt="License Apache 2.0" style="max-width:100%;">
  </a>

  <br/>

  <a href="https://codecov.io/gh/thazelart/golang-cli-template" >
    <img src="https://codecov.io/gh/thazelart/golang-cli-template/branch/main/graph/badge.svg?token=CLP6KW4QLK"/>
  </a>

  <a href="https://github.com/thazelart/golang-cli-template/actions/workflows/codeql.yaml" rel="nofollow">
    <img src="https://github.com/thazelart/golang-cli-template/actions/workflows/codeql.yaml/badge.svg" alt="codeql" style="max-width:100%;">
  </a>

  <a href="https://goreportcard.com/report/github.com/thazelart/golang-cli-template" rel="nofollow">
    <img src="https://goreportcard.com/badge/github.com/thazelart/golang-cli-template" alt="Go report card" style="max-width:100%;">
  </a>
</p>
<br/>

An opinionated template for new Golang cli projects.

<!-- BEGIN __DO_NOT_INCLUDE__ -->

## Template

This golang CLI template includes the base of a [cobra](https://github.com/spf13/cobra) cli tested with [testify](https://github.com/stretchr/testify) and [codecov](https://codecov.io). The release process with [goreleaser](https://goreleaser.com/) and contains a basic secured Docker image.

The whole thing is documented with [MkDocs](https://www.mkdocs.org/) and templated with [go-archetype](https://github.com/rantav/go-archetype).

For more information please have a look at the [features](https://thazelart.github.io/golang-cli-template/golang-cli-template/features/) section of the documentation.

### Getting started

Please find all the required information on the [getting stared](https://thazelart.github.io/golang-cli-template/golang-cli-template/getting-started/) section of the documentation.

### Greetings on Pull Requests and Issues

This repository includes greetings on Pull Requests and Issues. By default the comment will be added by the `github-actions bot`. If you want to customize it, add a `TAP_GITHUB_TOKEN` secret containing a [personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) of the user or organization you want the comment from.

### Logo

The logo is based on the `create-go-app`. Please find all information [here](https://github.com/create-go-app/cli/wiki/Logo).

<!-- END __DO_NOT_INCLUDE__ -->

## Install

You can install the pre-compiled binary (in several ways), use Docker or compile from source (when on OSS).

Below you can find the steps for each of them.

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

## Contribute to this repository

This project adheres to the Contributor Covenant [code of conduct](https://github.com/thazelart/golang-cli-template/blob/main/.github/CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. We appreciate your contribution. Please refer to our [contributing](https://github.com/thazelart/golang-cli-template/blob/main/.github/CONTRIBUTING.md) guidelines for further information.
