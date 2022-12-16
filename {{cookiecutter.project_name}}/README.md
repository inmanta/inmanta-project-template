# {{cookiecutter.project_name}}

## Getting started

Set up a new virtual environment, then install the project in it and run your first compile. The first line assumes you have
``virtualenvwrapper`` installed. If you don't, you can replace it with `python3 -m venv .env && source .env/bin/activate`.

```bash
mkvirtualenv inmanta-{{cookiecutter.project_name|slugify}} -p python3 -a .
pip install inmanta-core
inmanta -vvv project install
inmanta -vvv compile
```
