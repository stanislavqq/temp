pipeline {
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
    }
}