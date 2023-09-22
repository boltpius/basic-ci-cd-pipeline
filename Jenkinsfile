pipeline {
  agent any
  stages {
    stage('Pull git code') {
      steps {
        git(url: 'https://github.com/boltpius/basic-ci-cd-pipeline.git', branch: 'main')
      }
    }

  }
}