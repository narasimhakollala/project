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
	stage('docker image build')
	  steps{
	    docker build . -t narasimha/project:$(build_version)
	  }
	}
	stage('Run docker'){
	  steps{
	    docker run -it --rm --name webcal_$(build_version) -p 9090:8080 narasimha/project:1.0.1
	  }
	}
  
  }
}
