# Inmanta project template

A cookiecutter template to create a new Inmanta project.

# Install dependencies

```bash
pip install cookiecutter
```

# Usage

```bash
cookiecutter https://github.com/inmanta/inmanta-project-template.git
```

This command will prompt for the template parameters.

### Parameters

| Template parameters | Default value                | Description                                                                                                 |
|---------------------|------------------------------|-------------------------------------------------------------------------------------------------------------|
| project_name        | project                      | The name of the root directory of the new Inmanta project.                                                  |
| project_description |                              | A description of the new Inmanta project.                                                                   |
| author              | Inmanta                      | The author to be mentioned in the project.yml file                                                          |
| author_email        | code@inmanta.com             | The e-mail address of the author.                                                                           |
| license             | ASL 2.0                      | The License of this new Inmanta project.                                                                    |
| copyright           | ${year} Inmanta              | The owner of the copyright of the project.                                                                  |
| modules_v1_repo_url | https://github.com/inmanta/  | The URL where v1 modules can be downloaded.                                                                 |
| pip_index_url       | https://pypi.org/simple/     | The project-wide pip index telling pip where to look for python packages (e.g. v2 modules, dependencies...) |


More information about these parameters can be found [here](https://docs.inmanta.com/community/latest/reference/projectyml.html#project-yml)
