pipeline {
  agent any
  environment {
    dockerHome = tool 'myDocker' 
    mavenHome = tool 'myMaven'
    PATH = "$docherHome/bin:$mavenHome/bin:$PATH"
  }

  stages {
     stage('Checkout') {
       steps {
         sh "mvn --version"
         sh "docker version"
         echo "Build"
         echo "PATH - $PATH"
         echo "BUILD_NUMBER - $env.BUILD_NUMBER"
         echo "BUILD_ID - $env.BUILD_ID"
         echo "JOB_NAME - $env.JOB_NAME"
         echo "BUILD_TAG - $env.BUILD_TAG"
         echo "BUILD_URL - $env.BUILD_URL"
//          sh "node --version"
       }
     }
    stage('Compile') {
       steps {
           bat "mvn clean compile"
       }
    }
      stage('Test') {
       steps {
           bat "mvn test"
       }
    }
     
  } 
}
  
