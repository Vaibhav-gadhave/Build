pipeline {
    agent { dockerfile true }
    stages {
        stage('Development') {
        app.tag(["tag1","latest"])    
	steps {
                echo 'Your Image has been created'
		echo 'Thanks for using Jenkins'
            }
        }
    }
}
