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
        sh 'sudo docker build . -t piusgoodpassfred '
      }
    }

    stage('check images') {
      parallel {
        stage('check images') {
          steps {
            sh '''sudo docker images 
'''
          }
        }

        stage('error') {
          steps {
            sh 'sudo docker run -d -p 80:3000 piusgoodpassfred'
          }
        }

      }
    }

  }
}