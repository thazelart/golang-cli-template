<!-- BEGIN __DO_NOT_INCLUDE__ -->
<p align="center"><img src="https://gist.githubusercontent.com/thazelart/5be06c101f53079b9914d6efd867e690/raw/e4812878f9d282cff5b118e61cc2863d0bc92f81/golang-cli-template.png" alt="Logo" height="120" /></p>
<!-- END __DO_NOT_INCLUDE__ -->
<h1 align="center"> golang-cli-template</h1>

<p align="center">
  <a href="https://github.com/gojp/goreportcard/blob/master/LICENSE" rel="nofollow"><img src="https://img.shields.io/badge/License-Apache%202.0-blue.svg" alt="License Apache 2.0" style="max-width:100%;"></a>
  <a href="https://pkg.go.dev/github.com/thazelart/golang-cli-template" rel="nofollow"><img src="https://pkg.go.dev/badge/github.com/thazelart/golang-cli-template.svg" alt="Go reference" style="max-width:100%;"></a>
  <a href="https://goreportcard.com/report/github.com/thazelart/golang-cli-template" rel="nofollow"><img src="https://goreportcard.com/badge/github.com/thazelart/golang-cli-template" alt="Go report card" style="max-width:100%;"></a>
</p>
<br/>


An opinionated template for new Golang cli projects.
<!-- BEGIN __DO_NOT_INCLUDE__ -->
It includes:
 - The base of a cli using `spf13/cobra` (including the `version` command)
 - The `spf13/viper` configuration handler (using the `$HOME/.golang-cli-template.yaml` config file)
 - Everything needed to test using `stretchr/testify`
 - The optimized and secured Dockerfile
 - Templating engine using `rantav/go-archetype`

More to come.

## Init your own project using that template

We are using [rantav/go-archetype](https://github.com/rantav/go-archetype) to enable the creation of new projects from that template.

```bash
$ go install github.com/rantav/go-archetype@latest

$ go-archetype transform --transformations .go-archetype.yaml --source . --destination /path/to/destination
# answer the questions

$ cd /path/to/destination
# init your git repository and you're done.
```

Enjoy developing your awesome cli.
<!-- END __DO_NOT_INCLUDE__ -->

## Generate and use the autocompletion script
```bash
$ golang-cli-template completion ${0##*/} > /tmp/completion
$ source /tmp/completion
```
