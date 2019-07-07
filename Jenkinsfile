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
                echo 'Stopping all md services'
                sh 'docker stop $(docker ps -a -q)
                sh 'docker system prune -f'
                sh 'docker run -dit -p 8000:80 --name webmd5 webmd5:latest'
               
            
            }
        }
    }
}
