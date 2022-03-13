package version

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

var expectOutput = `golang-cli-template - dev

Git Commit: None
Build date: None
Go version: go1.17.8
OS / Arch: darwin amd64
`

func TestGenerateOutput(t *testing.T) {
	assert.Equal(t, generateOutput(), expectOutput)
}
