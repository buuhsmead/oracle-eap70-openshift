FROM openshift/jboss-eap70-openshift:latest 

MAINTAINER buuhsmead

ADD modules/com/ $JBOSS_HOME/modules/com/

COPY s2i/ /tmp/src/.s2i/
RUN chmod -R 777 /tmp/src/*
