package version

import (
	"fmt"
	"runtime"
	"testing"

	"github.com/stretchr/testify/assert"
)

var regexp = fmt.Sprintf(`^golang-cli-template - .*

Git Commit: .*
Build date: [0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2} .*
Go version: go[0-9]{1}.[0-9]+.*
OS / Arch : %s %s
`, runtime.GOOS, runtime.GOARCH)

func TestGenerateOutput(t *testing.T) {
	assert.Regexp(t, regexp, generateOutput())
}
