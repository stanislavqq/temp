pipeline {
    agent { label 'master' }
    environment {
        TEST_ENV_VAR = 1
        TEST_SECOND = "test"
    }

    stages {
        stage("Initialize") {
            steps {
                script {
                     def dockerHome = tool 'app-docker'
                     env.PATH = "${dockerHome}/bin:${env.PATH}"
                }
            }
        }
        stage("Prepare ENV") {
            steps {
                script {
                    env.TEST_ENV = "aswfqf"
                    sh 'env'
                    sh "docker version" // DOCKER_CERT_PATH is automatically picked up by the Docker client
                }
            }

        }
        stage("Build") {
            steps {
                script {
                    def dockerImage = docker.build("bretgauer1obit/app-test:latest")

                                  /* Push the container to the docker Hub */

                    echo "OK"
                }
            }
        }
    }
}