#!/usr/bin/env bash

set -o allexport
source /etc/environment
set +o allexport

/bin/bash "$@"
