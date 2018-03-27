FROM verdigristech/sbt:0.13

RUN apt-get update \
  && apt-get install -y git-core \
      openssh-client \
      jq \
      python \
      python-six \
      python-pyasn1 \
      python-pip \
  && pip install awscli \
  && apt-get purge --auto-remove -y python-pip
