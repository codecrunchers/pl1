#!/bin/bash

# TODO without this JENKINS-24752 workaround, it takes too long to provision.
# (Do not add hudson.model.LoadStatistics.decay=0.1; in that case we overprovision slaves which never get used, and OnceRetentionStrategy.check disconnects them after an idle timeout.)
export JAVA_OPTS=-Dhudson.model.LoadStatistics.clock=1000
/usr/local/bin/jenkins.sh
