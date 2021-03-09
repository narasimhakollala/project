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
            sh 'docker build . -t narasimha/project:1.0.1'
			sh 'echo docker image build completed'
          }
        }
        stage('Run docker'){
          steps{
            sh 'docker run -it --rm --name webcal_1.0.1 -p 9090:8080 narasimha/project:1.0.1'
			sh 'docker container launched'
          }
        }
  }
}
