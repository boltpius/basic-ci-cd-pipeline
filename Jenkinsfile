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
      steps {
        sh '''sudo docker images 
'''
      }
    }

    stage('push to docker hub ') {
      parallel {
        stage('push to docker hub ') {
          steps {
            sh 'sudo docker login -u $userlogin -p $userpassword'
          }
        }

        stage('push image') {
          steps {
            sh 'sudo docker push boltpius/piusgoodpassfred'
          }
        }

      }
    }

  }
  environment {
    userlogin = 'boltpius'
    userpassword = 'Diamondbank1'
  }
}