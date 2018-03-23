FROM verdigristech/sbt:0.13

RUN apt-get update \
  && apt-get install -y git-core openssh-client
