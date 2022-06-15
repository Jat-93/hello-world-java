pipeline {
    agent {
        label 'test'
    }
           stages{
        stage("build docker image"){
            steps{
                script{
                     sh '''
                        sudo docker stop test
                        sudo docker rm test
                        sudo docker build -t test .
                        sudo docker run -itd -p 8083:8080 test
                       ''' 
                }
            }
        }
    }
}
