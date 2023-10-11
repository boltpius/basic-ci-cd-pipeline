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
        sh 'sudo docker build . -t boltpius/piusgoodpassfred:latest'
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
        stage('push to docker hub') {
          steps {
            sh 'sudo docker login -u $userlogin -p $userpassword'
          }
        }

        stage('push image') {
          steps {
            sh 'sudo docker push boltpius/piusgoodpassfred:latest'
          }
        }

      }
    }

    stage('deploy to EBS') {
      steps {
        sh '''aws configure set aws_access_key_id "$AWS_CREDENTIALS"
aws configure set aws_secret_access_key "$AWS_CREDENTIALS"
eb init -r ${AWS_DEFAULT_REGION} -p \'docker\' ${EB_APPLICATION_NAME}
eb use ${EB_ENVIRONMENT_NAME}
eb deploy

'''
      }
    }

  }
  environment {
    userlogin = 'boltpius'
    userpassword = 'Diamondbank1'
    EB_APPLICATION_NAME = 'Achiever-env'
    AWS_DEFAULT_REGION = 'eu-west-1'
  }
}