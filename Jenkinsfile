pipeline {
  agent any

  tools {nodejs "NodeJs"}

  stages {
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