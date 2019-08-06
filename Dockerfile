FROM sonarqube:7.9-community

USER root
RUN apt-get update
RUN apt-get install -y wget
USER sonarqube

ENV GROOVY_PLUGIN_VERSION 1.5

RUN wget https://github.com/SonarQubeCommunity/sonar-groovy/releases/download/${GROOVY_PLUGIN_VERSION}/sonar-groovy-plugin-${GROOVY_PLUGIN_VERSION}.jar \
  -P $SONARQUBE_HOME/extensions/plugins
  
COPY ./config/sonar.properties ${SONARQUBE_HOME}/conf

