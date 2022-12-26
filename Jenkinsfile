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
                        sudo docker stop test || true && sudo docker rm test || true
                        sudo docker images test:latest || true && sudo docker rmi -f  test:latest || true
                        sudo docker build -t test .
                        sudo docker run -itd --name test -p 8080:8081 test
                       ''' 
                }
            }
        }
    }
}
