pipeline {
//   agent any
  agent {docker {image 'maven:3.6.3'}}
  stages {
     stage('Build') {
       steps {
         echo "mvn --version"
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
  
