pipeline {
  agent any
//   agent {docker {image 'node:13.8'}}
  stages {
     stage('Build') {
       steps {
         echo "Build"
//          sh "node --version"
       }
     }
    stage('Test') {
       steps {
           echo "Test"
       }
    }
     stage('Integration Test') {
       steps {
           echo "Integration Test"
       }
    }
  } 
}
  