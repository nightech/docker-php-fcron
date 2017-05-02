#!/usr/bin/env bash

set -e

set | grep -v -E "BASHOPTS|BASH_VERSINFO|EUID|PPID|SHELLOPTS|UID"  > /etc/environment

for FILE in `find /etc/cron.d/ -type f -not -name '\.*'`;  do
    fcrontab $FILE
done

/usr/local/bin/docker-entrypoint.sh "$@"
