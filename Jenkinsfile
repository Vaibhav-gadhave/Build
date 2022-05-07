pipeline {
    agent { dockerfile true }
    parameters {
    imageTag(name: 'DOCKER_IMAGE', image: 'jenkins/jenkins')
  }
    stages {
        stage('Development') {
	steps {
                echo 'Your Image has been created'
		echo 'Thanks for using Jenkins'
            }
        }
    }
}
