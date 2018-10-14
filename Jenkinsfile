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
	stage ('deploy to tom') {
			sshagent(['tomcat-ssh']) {
    // some block
sh '''scp /target/*.war ec2-user@10.1.3.47:/opt/apache-tomcat-8.0.53/webapps'''

}

	}

       
}
