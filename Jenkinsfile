pipeline {
    agent any
    triggers{
        cron(BRANCH_NAME == "master" ? "H H(2-5) * * *": "")
    }
    options {
        disableConcurrentBuilds()
        skipDefaultCheckout()
    }
    stages {
        stage("initialize project and setup virtualenv") {
            steps {
                deleteDir()
                dir('inmanta-project-template') {
                    checkout scm
                }
                dir('project') {
                    sh '''
                        uv tool run cookiecutter --no-input ../inmanta-project-template/
                    '''
                }
                dir('project/project') {
                    sh '''
                        python_version=$(curl https://docs.inmanta.com/community/latest/reference/compatibility.json | jq -r '.system_requirements.python_version')
                        uv venv --python "$python_version"
                        uv pip install pip
                        source .venv/bin/activate
                        # follow README instructions exactly, except for Python version
                        pip install inmanta-core
                        inmanta -vvv project install
                        inmanta -vvv compile
                    '''
                }
            }
        }
    }
    post{
        cleanup{
            deleteDir()
        }
    }
}
