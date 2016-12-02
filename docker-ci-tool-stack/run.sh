#!/bin/bash
trimmed=`echo $1 | tr -d ' '`
PROJNAME=$trimmed
__pwd="$PWD"
mkdir -p "/home/alan/devel/docker-volumes/gitlab/data/git-data/repositories/root/"
cd "/home/alan/devel/docker-volumes/gitlab/data/git-data/repositories/root/"
git clone --bare "$__pwd/demo/" "$PROJNAME.git"
chown 200 /home/alan/devel/docker-volumes/gitlab/ -R
chown 200 /home/alan/devel/docker-volumes/gitlab/* -R
