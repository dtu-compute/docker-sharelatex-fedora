#!/usr/bin/bash

adduser --system --home /var/www/sharelatex --no-create-home sharelatex

mkdir -p /etc/sharelatex
mkdir -p /var/lib/sharelatex/data/cache
mkdir -p /var/lib/sharelatex/data/compiles
mkdir -p /var/lib/sharelatex/data/template_files
mkdir -p /var/lib/sharelatex/data/user_files
mkdir -p /var/lib/sharelatex/tmp/dumpFolder
mkdir -p /var/lib/sharelatex/tmp/uploads
mkdir -p /var/log/sharelatex

touch /var/lib/sharelatex/data/db.sqlite

chown -R sharelatex:sharelatex /var/lib/sharelatex
chown -R sharelatex:sharelatex /var/log/sharelatex
chown -R sharelatex:sharelatex /var/www/sharelatex
