#!groovy

node {
	   
	stage('Checkout'){

          checkout scm
       }

       stage('BuildArtifact'){

         sh 'mvn clean deploy'
	       
	       
       }
	   
      stage('Sonar') {
                    //add stage sonar
                  sh 'mvn sonar:sonar'
                }
       
}
