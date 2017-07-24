FROM openshift/jboss-eap70-openshift:latest 

MAINTAINER buuhsmead

ADD modules/com/ $JBOSS_HOME/modules/com/


