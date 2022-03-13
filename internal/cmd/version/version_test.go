package version

import (
	"fmt"
	"runtime"
	"testing"

	"github.com/stretchr/testify/assert"
)

var expectOutput = fmt.Sprintf(`golang-cli-template - dev

Git Commit: None
Build date: None
Go version: %s
OS / Arch: %s %s
`, runtime.Version(), runtime.GOOS, runtime.GOARCH)

func TestGenerateOutput(t *testing.T) {
	assert.Equal(t, generateOutput(), expectOutput)
}
