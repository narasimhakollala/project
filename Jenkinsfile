pipeline{
  agent any
  stages {
    stage('Build'){
          steps{
            sh 'cd /home/centos/project'
            sh 'mvn compile'
            sh 'mvn package'
          }
        }
        stage('Docker image Build'){
          steps{
            sh 'docker build . -t narasimha/project:1.0.1'
          }
        }
        stage('Run docker'){
          steps{
            sh 'docker run -it --rm --name webcal_1.0.1 -p 9090:8080 narasimha/project:1.0.1'
          }
        }
  }
}

