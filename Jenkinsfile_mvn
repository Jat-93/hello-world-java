pipeline {
    agent {
        label 'test'
    }
    
     stages{
        stage("clone"){
            steps{
             git branch: 'main', credentialsId: 'gituser', url: 'https://github.com/Jat-93/jenkins-docker.git'
            }
        }
        stage("build docker image"){
            steps{
                script{
                     sh 'mvn clean package'
                    sh 'docker build -t test .'
                }
            }
        }
    }
}
