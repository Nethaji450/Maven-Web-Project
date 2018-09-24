FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY build/libs/Maven-Web-Project.war /usr/local/tomcat/webapps/Maven-Web-Project.war
