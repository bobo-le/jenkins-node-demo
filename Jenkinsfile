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
        sh 'docker build -t ${BUILD_TAG} .'
      }
    }
    stage('Test') {
      steps {
        sh 'docker run --rm ${BUILD_TAG} npm run test'
      }
    }
  }
  post {
    always {
        sh 'docker image rm ${BUILD_TAG}'
    }

  }
}