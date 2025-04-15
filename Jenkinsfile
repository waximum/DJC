pipeline {
  agent {
    docker {
      image 'cypress/browsers:node-18.12.0-chrome107-ff107'
    }
  }

  stages {
    stage('Install') {
      steps {
        sh 'npm install'
      }
    }
    stage('Run tests') {
      steps {
        sh 'npx cypress run'
      }
    }
  }
}