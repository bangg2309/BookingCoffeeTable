FROM tomcat:9.0.75-jdk17-corretto

EXPOSE 8080

RUN rm -fr /usr/local/tomcat/webapps/ROOT

COPY ./target/BookingCoffeeTable-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]