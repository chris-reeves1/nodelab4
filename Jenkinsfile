pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
                sh 'docker stop nodejs-project || true'
                sh 'docker rm nodejs-project || true'
                sh 'docker rm -f $(docker ps -aq) || true'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t nodejs-project:${BUILD_NUMBER} .'
                sh 'docker build -t nodejs-project:latest .'
            }
        }

        stage('Run') {
            steps {
                sh 'docker run -p 80:5000 --name nodejs-project -d nodejs-project:${BUILD_NUMBER}'
            }
        }
    }
}
