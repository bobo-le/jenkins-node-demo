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
        sh 'make build BUILD_TAG=${BUILD_TAG}'
      }
    }
    stage('Test') {
      steps {
        sh 'make test BUILD_TAG=${BUILD_TAG}'
      }
    }
    stage('Publish') {
      when { tag "release-*" }
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