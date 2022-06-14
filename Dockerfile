FROM tomcat

COPY Hello.war /usr/local/tomcat/webapps/
COPY SampleWebApp.war /usr/local/tomcat/webapps/
