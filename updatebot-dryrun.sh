#!/usr/bin/env bash
set -e

#export UPDATEBOT_GITHUB_USER=
#export UPDATEBOT_GITHUB_PASSWORD=

#dry run so we dont create PRs
export UPDATEBOT_DRY_RUN=true
#the default file is .updatebot.yml but that would be a hidden file
export UPDATEBOT_CONFIG_FILE=updatebot.yml
#the default work dir is .updatebot-repos - again hidden
export UPDATEBOT_WORK_DIR=./updatebot-repos

java -jar updatebot-1.1.31.jar push-version --kind maven org.springframework.boot:spring-boot-starter-data-jpa 2.1.0.RELEASE
#go into the dir as it is ignore by git at this level but not that level
cd updatebot-repos/github/ryandawsonuk/jhipster-sample-app/
git diff pom.xml
#and go back to where we started
cd ../../../..

java -jar updatebot-1.1.31.jar push-version --kind docker openjdk 8-jdk
cd updatebot-repos/github/ryandawsonuk/jhipster-sample-app/
git diff Dockerfile
cd ../../../..

java -jar updatebot-1.1.31.jar push-version --kind npm ngx-cookie 2.0.2
cd updatebot-repos/github/ryandawsonuk/jhipster-sample-app/
git diff package.json
cd ../../../..