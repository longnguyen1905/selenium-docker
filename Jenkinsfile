pipeline{

    agent any

    stages{

        stage('Build Jar'){
            steps{
                bat "mvn clean package -Dskiptests"
            }
        }

        stage('Build Image'){
            steps{
                bat "docker build -t=longnguyen1905/selenium ."
            }

        }

        stage('Push Image'){
            steps{
                bat "docker push longnguyen1905/selenium"
            }

        }

    }
}