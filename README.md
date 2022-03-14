# golang-cli-template
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/gojp/goreportcard/blob/master/LICENSE)
[![Go Reference](https://pkg.go.dev/badge/github.com/thazelart/golang-cli-template.svg)](https://pkg.go.dev/github.com/thazelart/golang-cli-template)
[![Go Report Card](https://goreportcard.com/badge/github.com/thazelart/golang-cli-template)](https://goreportcard.com/report/github.com/thazelart/golang-cli-template)


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

$ go-archetype transform --transformations .go-archtype.yaml --source . --destination /path/to/destination
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
