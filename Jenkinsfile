pipeline {
    agent any
    
      stages{
        stage("clone"){
            steps{
             git branch: 'main', credentialsId: 'gituser', url: 'https://github.com/Jat-93/docker.git'
            }
        }
        stage("build docker image"){
            steps{
                script{
                     sh '''
                        docker build -t test .
                        docker run -itd --name test -p 8080:8081 
                       ''' 
                }
            }
        }
    }
}
