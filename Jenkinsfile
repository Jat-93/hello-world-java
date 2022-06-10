pipeline {
    agent {
        label 'test'
    }
    
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
                        sudo docker build -t test .
                        sudo docker run -itd -p 8081:8080 test
                       ''' 
                }
            }
        }
    }
}
