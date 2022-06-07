pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git 'https://github.com/Jat-93/hello-world-java.git'
                sh 'mvn clean compile'
            }
        }
    }
}
