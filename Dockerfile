FROM sonarqube:7.9

ENV GROOVY_PLUGIN_VERSION 1.5

RUN wget https://github.com/SonarQubeCommunity/sonar-groovy/releases/download/${GROOVY_PLUGIN_VERSION}/sonar-groovy-plugin-${GROOVY_PLUGIN_VERSION}.jar \
  -P $SONARQUBE_HOME/extensions/plugins
  
ENV LDAP_PLUGIN_VERSION 2.2.0.608

RUN wget http://central.maven.org/maven2/org/sonarsource/ldap/sonar-ldap-plugin/${LDAP_PLUGIN_VERSION}/sonar-ldap-plugin-${LDAP_PLUGIN_VERSION}.jar \
  -P $SONARQUBE_HOME/extensions/plugins
