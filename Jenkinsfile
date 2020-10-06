pipeline {
  agent any
  environment{
    SONAR = tool 'SONAR_HOME'
  }
  
  stages {
    
    stage ('Get Code from BitBucket'){
      steps {
        git credentialsId: 'github', url: 'https://github.com/chwiee/crud-application-using-flask-and-mysql.git/'
      }
    }

    stage ('SonarQube Analytic'){
      steps{
        withSonarQubeEnv('SonarQube'){
          sh "${SONAR}/sonar-scanner \
          -Dsonar.projectKey=deploy_sonar \
          -Dsonar.sources=. \
          -Dsonar.host.url=http://35.173.20.54:9000 \
          -Dsonar.login=d85e82941f1fa945e6837886c21e370aa71c3f82"
        }
      }
    }
  }
}
