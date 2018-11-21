FROM verdigristech/sbt:0.13

# Without /usr/share/man/man7 directory, postgresql-client-9.6 will not build
RUN mkdir -p /usr/share/man/man7 \
  && apt-get update \
  && apt-get install -y \
      # Required to check out code on CircleCI
      git-core \
      openssh-client \
      # Required for sbt to run psql commands
      postgresql-client-9.6 \
      # Required to download Node.js
      curl \
      # Required for cqlsh
      python \
      python-six \
      python-pip \
  && CASS_DRIVER_NO_CYTHON=1 pip install cqlsh \
  && curl https://nodejs.org/dist/v8.11.1/node-v8.11.1-linux-x64.tar.xz | tar -C /usr/local --strip-components=1 --no-same-owner -xJv \
  && npm install -g serverless \
  # We don't need pip anymore after installing cqlsh
  && apt-get remove --purge -y python-pip \
  && apt-get autoremove -y \
  && apt-get autoclean
