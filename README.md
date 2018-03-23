# docker-ci-scala

[![Build Status](https://img.shields.io/circleci/token/f41a8ea8d8fe8a47d6d409f60f53230c8c21ff67/project/VerdigrisTech/docker-ci-scala.svg)](https://circleci.com/gh/VerdigrisTech/workflows/docker-ci-scala)
[![Report Issues](https://img.shields.io/badge/issues-pivotal%20tracker-0fc8c3.svg)](https://www.pivotaltracker.com/n/projects/2152215)
[![Join Chat on Slack](https://img.shields.io/badge/slack-%23team--insights-0fc8c3.svg)](https://verdigris.slack.com/messages/team-producta_data)

Base image for building Scala projects on [CircleCI](https://circleci.com).

## Usage

Use this image as a primary container for testing and building Scala projects
on CircleCI:

```yaml
version: 2
jobs:
  test:
    docker:
      - image: verdigristech/ci-scala
    working_directory: ~/myproject
    steps:
      - checkout
      - setup_remote_docker

# Rest of the config.yml for your project
# ...
```

---

Copyright © 2018 Verdigris Technologies Inc. All rights reserved.
