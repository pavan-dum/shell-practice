#!/bin/bash

set -e

trap 'echo "there is an error in $LINENO, command: $BASH_COMMAND"' ERR

dnf install nginx

dnf install mysqlmhvchnkb

dnf install redis