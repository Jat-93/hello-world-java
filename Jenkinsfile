pipeline {
    agent any
    
      stages{
        stage("clone"){
            steps{
             git branch: 'master', credentialsId: 'gituser', url: 'https://github.com/Jat-93/hello-world-java.git'
            }
        }
        stage("build docker image"){
            steps{
                script{
                     sh '''
                        docker build -t jat .
                        docker run -itd --name test -p 8080:8088 jat 
                       ''' 
                }
            }
        }
    }
}
