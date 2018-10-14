#!groovy

node {
	   
	stage('Checkout'){

          checkout scm
       }

       stage('BuildArtifact'){

          def mvn_version = 'M2_HOME'
          withEnv( ["PATH+MAVEN=${tool mvn_version}/bin"] ) {
          sh "mvn clean package"
       // bat "mvn clean package"          
       }
       }
	   
      stage('Sonar') {
                    //add stage sonar
	       def mvn_version = 'M2_HOME'
          withEnv( ["PATH+MAVEN=${tool mvn_version}/bin"] ) {
          sh "mvn sonar:sonar"
       // bat "mvn clean package"          
       }
                }
       
}
