package version

import (
	"fmt"
	"runtime"
)

// Those will be filled in by the compiler.
var (
	// GitCommit returns the git commit that was compiled.
	gitCommit string

	// Version returns the main version number that is being run at the moment.
	version string

	// BuildDate returns the date the binary was built
	buildDate string
)

// GoVersion returns the version of the go runtime used to compile the binary
var goVersion = runtime.Version()

// OsArch returns the os and arch used to build the binary
var osArch = fmt.Sprintf("%s %s", runtime.GOOS, runtime.GOARCH)

func init() {
	if version == "" {
		version = "dev"
		gitCommit = "None"
		buildDate = "None"
	}
}

// generateOutput return the output of the version command
func generateOutput() string {
	return fmt.Sprintf(`golang-cli-template - %s

Git Commit: %s
Build date: %s
Go version: %s
OS / Arch: %s
`, version, gitCommit, buildDate, goVersion, osArch)
}

// Print the current version
func Print() {
	fmt.Println(generateOutput())
}
