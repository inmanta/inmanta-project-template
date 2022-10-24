#! /usr/bin/env sh

git init
git add .
username="inmanta-project-template"
email=""
export GIT_COMMITTER_NAME="${username}"
export GIT_COMMITTER_EMAIL="${email}"
export GIT_AUTHOR_NAME="${username}"
export GIT_AUTHOR_EMAIL="${email}"
git commit -m "initial commit: cookiecutter template"
