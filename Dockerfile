FROM openshift/jboss-eap70-openshift:latest 

MAINTAINER buuhsmead

ADD modules/com/ $JBOSS_HOME/modules/com/

COPY s2i/ /tmp/src/.s2i/
RUN chgrp -R 0 /tmp/src \
  && chmod -R g+rwX /tmp/src
