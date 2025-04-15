pipeline {
    agent any
    stages {
        stage('John-Luzada - Build Docker Image') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/johnluzada97/python-devops-1']])
                script {
                    sh 'docker build -t johnl1111/jl-python-app .'
                }
            }
        }
        stage('John-Luzada - Login to Dockerhub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                        sh 'docker login -u johnl1111 -p ${dockerhubpwd}'
                    }
                }
            }
        }
        stage('John-Luzada - Push Docker image to Dockerhub') {
            steps {
                script {
                    sh 'docker push johnl1111/jl-python-app'
                }
            }
        }
    }
}