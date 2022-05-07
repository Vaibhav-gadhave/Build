pipeline {
    agent { dockerfile true }
    stages {
        stage('Development') {
            steps {
                echo 'Your Image has been created'
                app = docker.build("getintodevops/hellonode")                
		echo 'Thanks for using Jenkins'
            }
        }
    }
}
