FROM tomcat:9
COPY target/student-webapp.war /usr/local/tomcat/webapps/
FROM tomcat:9

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file
COPY target/student-webapp.war /usr/local/tomcat/webapps/student-webapp.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
