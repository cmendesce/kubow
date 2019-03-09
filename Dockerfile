FROM openjdk:11-jre-stretch
MAINTAINER Carlos Mendes <cmendesce@gmail.com>

ADD target/lib /usr/share/kubow/lib
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/kubow/kubow.jar

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/kubow/kubow.jar"]