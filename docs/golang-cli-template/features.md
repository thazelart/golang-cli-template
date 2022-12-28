Here is the list of all the features included in this CLI template. The whole thing is templated thanks to [go-archetype](https://github.com/rantav/go-archetype).

## CLI

- The base of a cli using [cobra](https://github.com/spf13/cobra) (including the `version` command)
- Everything needed to test using [testify](https://github.com/stretchr/testify)

## Docker

- The optimized and secured Dockerfile

## CI / CD

- Basic GitHub actions
- code coverage using [codecov](https://codecov.io)

- Release management using [goreleaser](https://goreleaser.com/):
  - Generate the completions scripts
  - Generate the man pages
  - Push images for `homebrew`, `apt`, `yum` and `apk`
  - Generate the `.rpm`, `.deb` and `.apk` package files

## Documentation

- Documentation on github pages using [MkDocs](https://www.mkdocs.org/)
