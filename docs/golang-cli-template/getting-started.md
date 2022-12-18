We are using [rantav/go-archetype](https://github.com/rantav/go-archetype) to enable the creation of new projects from that template.

## Install `go-archetype`

```bash
$ go install github.com/rantav/go-archetype@latest
```

## Set the main variables

```bash
$ DEST_FOLDER=/path/to/destination # Non existing folder
$ REPO_BASE_URL=github.com
$ REPO_USER=thazelart
$ REPO_NAME=my-awesome-cli
```

## Generate your project's base

```bash
$ go-archetype transform \
  --transformations .go-archetype.yaml \
  --source . \
  --destination ${DEST_FOLDER} \
  -- \
  --repo_base_url ${REPO_BASE_URL} \
  --repo_user ${REPO_USER} \
  --repo_name ${REPO_NAME}
```

Answer the questions.

## Init your git repository and push

```bash
$ cd ${DEST_FOLDER}
$ git init
$ git add .
$ git commit -m "first commit"
$ git branch -M main
$ git remote add origin git@${REPO_BASE_URL}:${REPO_USER}/${REPO_NAME}.git
$ git push -u origin main
```

!!! info "About the License"

    As you may have notices the `LICENSE` file is missing. Please add the according Licence file at the root of your fresh new repository. You can find most of the licenses [here](https://github.com/licenses/license-templates/tree/master/templates).

Enjoy developing your awesome cli.
