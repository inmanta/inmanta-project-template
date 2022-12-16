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
                        python3 -m venv ${WORKSPACE}/env
                        ${WORKSPACE}/env/bin/pip install -U pip cookiecutter
                        ${WORKSPACE}/env/bin/cookiecutter --no-input ../inmanta-project-template/
                    '''
                }
                dir('project/project') {
                    sh '''
                        # follow README instructions exactly
                        python3 -m venv .env && source .env/bin/activate
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
