FROM openshift/jboss-eap70-openshift:latest 

MAINTAINER buuhsmead

ADD modules/com/ $JBOSS_HOME/modules/com/

RUN ls -la /usr/local/s2i

COPY s2i/ /tmp/src/.s2i/ 
RUN chown -R jboss:root /tmp/src/.s2i
RUN ls -la /tmp
RUN ls -la /tmp/src
RUN ls -la /tmp/src/.s2i
RUN chmod -R 777 /tmp/src/.s2i
