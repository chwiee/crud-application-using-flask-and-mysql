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
          sh "${SONAR}/sonar-scanner -e "
        }
      }
    }
  }
}