pipeline {
    agent { label 'master' }
    environment {
        TEST_ENV_VAR = 1
        TEST_SECOND = "test"
    }

    stages {
        stage("Prepare ENV") {
            steps {
                script {
                    env.TEST_ENV = "aswfqf"
                }
            }

        }

        stage('Display Env') {
            steps {
                sh '''env'''
            }
        }
        stage("Build") {
            steps {
                script {
                    def dockerImage = docker.build("bretgauer1obit/app-test:v2")

                                  /* Push the container to the docker Hub */
                    dockerImage.push()
//                     docker.withRegistry('https://docker-hub.obit.ru', 'f85454c7-dd64-4517-9dbf-e9d650eac918') {
//                         buildDate = sh(returnStdout: true, script: "date +%s").trim()
//                         dockerImage = docker.build("${IMAGE}:${IMAGE_TAG}", "--rm --build-arg PROJECT=${PROJECT} --build-arg AUTO_CLEAN=${AUTO_CLEAN} --build-arg PROXY=${http_proxy} --build-arg GIT_REF=${GIT_COMMIT} --build-arg GIT_BRANCH=${BRANCH_NAME} --build-arg BUILD_DATE=${buildDate} backend")
//                     }
                    echo "OK"
                }
            }
        }
    }
}