def goFail = false


pipeline {
  agent any

  stages {
    stage("Env Variables") {
      steps {
         sh "printenv | sort"
      }
    }
    stage('Build') {
      steps {
        sh 'make build BUILD_TAG=${BUILD_TAG}'
      }
    }
    stage('Test') {
      steps {
        sh 'make test BUILD_TAG=${BUILD_TAG}'
      }
    }
    stage('Publish') {
      when {
        allOf {
          branch "release"
          tag pattern: /^([0-9]+)\.([0-9]+)\.([0-9]+)|([0-9]+)\.([0-9]+)/, comparator: 'REGEXP'
      }
      steps {
        sh 'make publish RELEASE_TAG=${TAG_NAME}'
      }
    }
  }
  post {
    always {
        sh 'make clean BUILD_TAG=${BUILD_TAG}'
    }
  }
}