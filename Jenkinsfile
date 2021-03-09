pipeline{
  agent any
  stages {
    stage('Build'){
	  steps{
	    cd /home/centos/project
		mvn compile
		mvn package
	  }
	}
	stage('Build'){
	  steps{
	    docker build . -t narasimha/project:1.0.1
	  }
	}
	stage('Run docker'){
	  steps{
	    docker run -it --rm --name webcal_$(build_version) -p 9090:8080 narasimha/project:1.0.1
	  }
	}
  
  }
}
