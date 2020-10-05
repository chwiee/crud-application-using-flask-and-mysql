pipeline {
  agent any
  environment{
    SONAR = tool 'SONAR_HOME'
  }
  
  stages {
    
    stage ('Get Code from BitBucket'){
      steps {
       sh 'echo oi'
      }
    }

    stage ('SonarQube Analytic'){
      steps{
        withSonarQubeEnv('SonarQube'){
          sh "${SONAR}/sonar-scanner -e -Dsonar.projectKey=TESTE_FINAL -Dsonar.sources=. -Dsonar.host.url=http://35.173.20.54:9000 -Dsonar.login=91aa821c79d85664cdd8809c5195847a6a302a24"
        }
      }
    }
  }
}