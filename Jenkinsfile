pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
                sh 'docker build -t webmd5 .'
              
            }
        }
        
        stage('Deploy'){
            steps{
                echo 'Doploying Container'
                echo 'Stopping...'
              //  sh 'docker stop webmd5'
              //  sh 'docker system prune -f'
                sh 'docker run -dit -p 8000:80 --name web ubuntu:latest'
            
            }
        }
    }
}
