pipeline {
    agent any


    stages {
        stage('Checkout Code') {
            steps {
                echo "Checking out source code..."
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo "Building Docker image..."
                    sh """
                        docker build -t nginx .
                    """
                }
            }
        }



    post {
        success {
            echo "Build and push successful!"
        }
        failure {
            echo "Build failed!"
        }
    }
}
