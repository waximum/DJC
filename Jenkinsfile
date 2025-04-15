pipeline {
  agent {
    docker {
      image 'jenkins-cypress'
      args '-v /dev/shm:/dev/shm'
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
