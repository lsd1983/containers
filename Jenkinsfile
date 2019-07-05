pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
                sh 'docker build -t ubuntu .'
              
            }
        }
        
        stage('Deploy'){
            steps{
                echo 'Doploying Container'
                sh 'docker run -dit -p 8000:80 --name web ubuntu:latest '
            
            }
        }
    }
}
