FROM tomcat:9.0
RUN apt-get update && apt-get install -y git maven default-jdk tomcat9
RUN git clone https://github.com/SOHAN-cyber/sample-java-app.git
WORKDIR sample-java-app
RUN mvn package && rm -rf /usr/local/tomcat/webapps/* && cp webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh", "run"]
