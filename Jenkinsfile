pipeline {
    agent {
        label 'test'
    }
           stages{
        stage("build docker image"){
            steps{
                script{
                     sh '''
                        sudo docker build -t test .
                        sudo docker run -itd -p 8082:8080 test
                       ''' 
                }
            }
        }
    }
}
