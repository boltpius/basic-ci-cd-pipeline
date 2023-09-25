pipeline {
  agent any
  stages {
    stage('Pull git code') {
      steps {
        git(url: 'https://github.com/boltpius/basic-ci-cd-pipeline.git', branch: 'main')
      }
    }

    stage('check dir') {
      steps {
        sh 'pwd'
      }
    }

    stage('docker build') {
      steps {
        sh '''docker build -t freddevops . 
'''
      }
    }

    stage('check images') {
      steps {
        sh '''docker images 
'''
      }
    }

  }
}
