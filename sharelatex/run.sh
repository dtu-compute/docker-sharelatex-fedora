#!/usr/bin/bash



# Waiting for mongodb to startup
#until nc -z localhost 27017; do
#    sleep 1
#done



export SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee
/usr/bin/node /var/www/sharelatex/chat/app.js >> /var/log/sharelatex/chat.log 2>&1 &
/usr/bin/node /var/www/sharelatex/clsi/app.js >> /var/log/sharelatex/clsi.log 2>&1 &
/usr/bin/node /var/www/sharelatex/docstore/app.js >> /var/log/sharelatex/docstore.log 2>&1 &
/usr/bin/node /var/www/sharelatex/document-updater/app.js >> /var/log/sharelatex/document-updater.log 2>&1 &
/usr/bin/node /var/www/sharelatex/filestore/app.js >> /var/log/sharelatex/filestore.log 2>&1 &
/usr/bin/node /var/www/sharelatex/real-time/app.js >> /var/log/sharelatex/real-time.log 2>&1 &
/usr/bin/node /var/www/sharelatex/spelling/app.js >> /var/log/sharelatex/spelling.log 2>&1 &
/usr/bin/node /var/www/sharelatex/tags/app.js >> /var/log/sharelatex/tags.log 2>&1 &
/usr/bin/node /var/www/sharelatex/track-changes/app.js >> /var/log/sharelatex/track-changes.log 2>&1 &
/usr/bin/node /var/www/sharelatex/web/app.js >> /var/log/sharelatex/web.log 2>&1 &




#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/chat/app.js >> /var/log/sharelatex/chat.log 2>&1 &
#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/clsi/app.js >> /var/log/sharelatex/clsi.log 2>&1 &
#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/docstore/app.js >> /var/log/sharelatex/docstore.log 2>&1 &
#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/document-updater/app.js >> /var/log/sharelatex/document-updater.log 2>&1 &
#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/filestore/app.js >> /var/log/sharelatex/filestore.log 2>&1 &
#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/real-time/app.js >> /var/log/sharelatex/real-time.log 2>&1 &
#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/spelling/app.js >> /var/log/sharelatex/spelling.log 2>&1 &
#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/tags/app.js >> /var/log/sharelatex/tags.log 2>&1 &
#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/track-changes/app.js >> /var/log/sharelatex/track-changes.log 2>&1 &
#exec /sbin/setuser sharelatex /usr/bin/node /var/www/sharelatex/web/app.js >> /var/log/sharelatex/web.log 2>&1 &




#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/chat/app.js >> /data/logs/chat.log 2>&1 &
#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/clsi/app.js >> /data/logs/clsi.log 2>&1 &
#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/docstore/app.js >> /data/logs/docstore.log 2>&1 &
#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/document-updater/app.js >> /data/logs/document-updater.log 2>&1 &
#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/filestore/app.js >> /data/logs/filestore.log 2>&1 &
#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/real-time/app.js >> /data/logs/real-time.log 2>&1 &
#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/spelling/app.js >> /data/logs/spelling.log 2>&1 &
#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/tags/app.js >> /data/logs/tags.log 2>&1 &
#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/track-changes/app.js >> /data/logs/track-changes.log 2>&1 &
#SHARELATEX_CONFIG=/etc/sharelatex/settings.coffee node /sharelatex/web/app.js >> /data/logs/web.log 2>&1

#cd /sharelatex && grunt migrate -v

