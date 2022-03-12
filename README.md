# golang-project-template

This is a template for a cli in Golang. It includes:
 - The base of a cli using cobra
 - The configuration handler (using the `$HOME/.golang-project-template.yaml` config file)

More to come.

## Init your own project using that template

```bash
# Configure your project name here
git_user=thazelart
project_name=my-awesome-cli

# I assume here that your Golang env is ready
cd ${GOPATH}/src/${git_user}

git clone git@github.com:thazelart/golang-project-template.git ${project_name}
cd ${project_name}
grep -rl "thazelart/golang-project-template" | xargs sed -i "s#thazelart/golang-project-template#${git_user}/${project_name}#g"
grep -rl "golang-project-template" | xargs sed -i "s#golang-project-template#${project_name}#g"
```

Enjoy developing your awesome cli.