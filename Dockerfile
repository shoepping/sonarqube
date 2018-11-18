FROM sonarqube:7.1

ENV GROOVY_PLUGIN_VERSION 1.5

RUN wget https://github.com/SonarQubeCommunity/sonar-groovy/releases/download/${GROOVY_PLUGIN_VERSION}/sonar-groovy-plugin-${GROOVY_PLUGIN_VERSION}.jar \
  -P $SONARQUBE_HOME/extensions/plugins
