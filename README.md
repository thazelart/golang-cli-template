# golang-cli-template
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/gojp/goreportcard/blob/master/LICENSE)
[![Go Reference](https://pkg.go.dev/badge/github.com/thazelart/golang-cli-template.svg)](https://pkg.go.dev/github.com/thazelart/golang-cli-template)
[![Go Report Card](https://goreportcard.com/badge/github.com/thazelart/golang-cli-template)](https://goreportcard.com/report/github.com/thazelart/golang-cli-template)               


An opinionated template for new Golang cli projects. It includes:
 - The base of a cli using `spf13/cobra` (including the `version` command)
 - The `spf13/viper` configuration handler (using the `$HOME/.golang-cli-template.yaml` config file)
 - Everything needed to test using `stretchr/testify`
 - The optimized and secured Dockerfile

More to come.

## Init your own project using that template

```bash
# Configure your project name here
git_user=thazelart
project_name=my-awesome-cli
maintainer="firstname LASTNAME firstname.lastname@example.com"

# I assume here that your Golang env is ready
cd ${GOPATH}/src/${git_user}

git clone git@github.com:thazelart/golang-cli-template.git ${project_name}
cd ${project_name}
grep -rl "thazelart/golang-cli-template" | xargs sed -i "s#thazelart/golang-cli-template#${git_user}/${project_name}#g"
grep -rl "golang-cli-template" | xargs sed -i "s#golang-cli-template#${project_name}#g"
grep -rl "golang-cli-template" | xargs sed -i "s#Thibault HAZELART thazelart@gmail.com#${maintainer}#g"
```

Enjoy developing your awesome cli.

## Generate and use the autocompletion script
```bash
$ golang-cli-template completion ${0##*/} > /tmp/completion
$ source /tmp/completion
```