pipeline {
    agent { dockerfile true }
    parameters {
    imageTag(defaultTag: 'lts-jdk11',tagOrder: 'NATURAL')
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
