
# Using Jenkins-X updatebot

An updatebot demo - shows [jenkins-x updatebot](https://github.com/jenkins-x/updatebot) doing version replacements locally without creating PRs. This way makes the options clearer and easier to experiment with.

First clone this repo.

Next set your credentials in the updatebot-dryrun.sh script and uncomment the credentials exports.

Run the updatebot-dryrun.sh script from the directory this was cloned into - see the console output for git diffs.

The commands in the script do version replacements against a [https://github.com/ryandawsonuk/jhipster-sample-app](jhister sample app)'s versions in [pom.xml](https://github.com/ryandawsonuk/jhipster-sample-app/blob/master/pom.xml), [Dockerfile](https://github.com/ryandawsonuk/jhipster-sample-app/blob/master/Dockerfile) and [package.json](https://github.com/ryandawsonuk/jhipster-sample-app/blob/master/package.json).

Without dry run [a PR](https://github.com/ryandawsonuk/jhipster-sample-app/pull/1/files) would be created.

Based on [jenkins-x updatebot 1.1.31](https://mvnrepository.com/artifact/io.jenkins.updatebot/updatebot/1.1.31)