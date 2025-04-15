pipeline {
  agent {
    docker {
      image 'cypress/browsers:node-18.12.0-chrome107-ff107'
    }
  }

  stages {
    stage('Install dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Run Cypress tests') {
      steps {
        sh 'npx cypress run'
      }
    }
  }
}