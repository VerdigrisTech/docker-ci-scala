FROM verdigristech/sbt:0.13

RUN mkdir -p /usr/share/man/man7 \
  && apt-get update \
  && apt-get install -y git-core \
      openssh-client \
      curl \
      jq \
      postgresql-client-9.6 \
      python \
      python-six \
      python-pyasn1 \
      python-pip \
  && pip install awscli \
  && apt-get purge --auto-remove -y python-pip
