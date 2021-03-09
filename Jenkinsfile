pipeline{
  agent any
  stages {
        stage('SCM'){
          steps{
	   git 'https://github.com/narasimhakollala/project.git'
	   sh 'echo git pull completed'
          }
        }
	stage('Build'){
          steps{
            sh 'mvn compile'
            sh 'mvn package'
			sh 'echo build completed'
          }
        }
        stage('Docker image Build'){
          steps{
            sh 'sudo docker build . -t narasimha/project:1.0.2'
			sh 'echo docker image build completed'
          }
        }
        stage('Run docker'){
          steps{
            sh 'sudo docker run -dt --rm --name webcal_1.0.2 -p 9090:8080 narasimha/project:1.0.2'
	    sh 'echo docker container launched'
          }
        }
  }
}
