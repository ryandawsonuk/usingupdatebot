
# Using Jenkins-X updatebot

An updatebot demo - shows [jenkins-x updatebot](https://github.com/jenkins-x/updatebot) doing version replacements locally without creating PRs. This way makes the options clearer and easier to experiment with.

First clone this repo.

Next set your credentials in the updatebot-dryrun.sh script and uncomment the credentials exports.

Run the updatebot-dryrun.sh script from the directory this was cloned into - see the console output for git diffs.

Based on [jenkins-x updatebot 1.1.31](https://mvnrepository.com/artifact/io.jenkins.updatebot/updatebot/1.1.31)