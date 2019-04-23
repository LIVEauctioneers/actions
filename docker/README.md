# GitHub Action for the Docker CLI

The GitHub Action for [Docker](https://docker.com/) wraps the Docker CLI to enable Docker commands to be run. This can be used to build, tag, push and other related tasks inside of an Action.

## Usage

```
action "build" {
  uses = "LIVEauctioneers/actions/docker@master"
  args = "build -t user/repo ."
}
```
