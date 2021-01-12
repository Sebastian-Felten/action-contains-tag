# GitHub Action: Contains tag

[![Docker Image CI](https://github.com/rickstaa/action-create-tag/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/rickstaa/action-create-tag/actions)
[![Code quality CI](https://github.com/rickstaa/action-create-tag/workflows/Code%20quality%20CI/badge.svg)](https://github.com/rickstaa/action-create-tag/actions?query=workflow%3A%22Code+quality+CI%22)
[![release](https://github.com/rickstaa/action-create-tag/workflows/release/badge.svg)](https://github.com/rickstaa/action-create-tag/actions?query=workflow%3Arelease)
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/rickstaa/action-create-tag?logo=github&sort=semver)](https://github.com/rickstaa/action-create-tag/releases)

Simple GitHub action that can be used to check if a commit or branch contains a given tag.

## Inputs

### `tag`

**Required**. Tag you want to create.

### `commit_sha`

**Optional**. The commit SHA hash on which you want to push the tag. Uses latest commit by default.

## Example usage

```yml
name: Create/update tag
on:
  push:
    branch: "main"
jobs:
  create-tag:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: rickstaa/action-contains-tag@v1
        with:
          identifier: "main"
          tag: "Latest"
```
