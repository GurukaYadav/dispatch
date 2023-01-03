pipeline {
  agent any

  stages {
    stage('Install dependencies, Compile and Package') {
      steps {
        sh '''go mod init dispatch
              go get
              go build
        '''
      }
    }

  }

}