pipeline{
def build_version = awk -F "[><]" '/modelVersion/ {print $3}' pom.xml
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
	    docker build . -t narasimha/project:$(build_version)
	  }
	}
	stage('Run docker'){
	  steps{
	    docker run -it --rm --name webcal_$(build_version) -p 9090:8080 narasimha/project:$(build_version)
	  }
	}
  
  }
}
