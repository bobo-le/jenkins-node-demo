pipeline {
  agent any

  tools {nodejs "NodeJs"}

  stages {
    stage('Docker-Test') {
        sh 'docker ps'
    }
    stage('Install') {
      steps {
        sh 'npm i'
      }
    }

    stage('Test') {
      steps {
        sh 'npm run test'
      }
    }

  }
}