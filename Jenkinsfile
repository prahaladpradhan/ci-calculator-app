node{
  stage('SCM Checkout'){
    git 'https://github.com/prahaladpradhan/ci-calculator-app'
  }
  stage('Compile Project'){
    step{
      withMaven(maven:'maven 3.5.0'){
        sh 'mvn clean install'
      }
    }
  }
   stage('Deployment Project'){
    step{
      withMaven(maven:'maven 3.5.0'){
        sh 'mvn deploy'
      }
    }
  }
}
