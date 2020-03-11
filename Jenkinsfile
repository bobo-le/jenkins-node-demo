
pipeline {
  agent any

  environment {
        def BUILD_VERSION = sh(script: "echo 'jenkins_node_demo' + `date +%s`", returnStdout: true).trim()
    }

  stages {
    stage("Env Variables") {
      steps {
         sh "printenv | sort"
      }
    }
    stage('Build') {
      steps {
        sh 'make build BUILD_TAG=${TAG_UNIXTIME}'
      }
    }
    stage('Test') {
      steps {
        sh 'make test BUILD_TAG=${TAG_UNIXTIME}'
      }
    }
    stage('Publish') {
      when {
        allOf {
          branch "release"
          tag pattern: /^([0-9]+)\.([0-9]+)\.([0-9]+)|([0-9]+)\.([0-9]+)/, comparator: 'REGEXP'
        }
      }
      steps {
        sh 'make publish RELEASE_TAG=${TAG_NAME}'
      }
    }
  }
  post {
    always {
        sh 'make clean BUILD_TAG=${TAG_UNIXTIME}'
    }

  }
}