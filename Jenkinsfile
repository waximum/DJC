pipeline {
  agent any
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
