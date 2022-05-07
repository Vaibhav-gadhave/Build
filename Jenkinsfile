pipeline {
    agent { dockerfile true }
    stages {
        stage('Development') {
            steps {
                echo 'Your Image has been created'
		app.tag(["tag1","latest"])		
		echo 'Thanks for using Jenkins'
            }
        }
    }
}
