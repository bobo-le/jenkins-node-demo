pipeline {
  agent any

  tools {nodejs "NodeJs"}

  stages {
    stage("Env Variables") {
      steps {
         sh "printenv | sort"
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t jenkins-pipeline-test .'
      }
    }
    stage('Test') {
      steps {
        sh 'docker run --rm jenkins-pipeline-test npm run test'
      }
    }
  }
}