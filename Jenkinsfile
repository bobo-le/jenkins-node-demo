pipeline {
  agent any

  tools {nodejs "NodeJs"}

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t jenkins-pipeline-test .'
      }
    }
    stage('Test') {
      steps {
        sh 'docker-compose run --rm jenkins-pipeline-test npm run test'
      }
    }
  }
}