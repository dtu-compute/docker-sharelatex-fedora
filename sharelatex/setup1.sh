#!/usr/bin/bash

adduser --system --home /var/www/sharelatex --no-create-home sharelatex

mkdir /var/log/sharelatex
mkdir /etc/sharelatex

mkdir -p /var/lib/sharelatex/data/user_files
mkdir -p /var/lib/sharelatex/data/compiles
mkdir -p /var/lib/sharelatex/data/cache
mkdir -p /var/lib/sharelatex/tmp/uploads
mkdir -p /var/lib/sharelatex/tmp/dumpFolder

chown sharelatex:sharelatex /var/log/sharelatex
chown -R sharelatex:sharelatex /var/lib/sharelatex

