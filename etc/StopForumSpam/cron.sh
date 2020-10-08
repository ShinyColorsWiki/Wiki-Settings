#!/bin/sh

NAME="listed_ip_180"
ZIP="${NAME}.zip"
TXT="${NAME}.txt"
URL="https://www.stopforumspam.com/downloads/${ZIP}"

cd /opt/wiki/StopForumSpam
rm -f $ZIP
echo $NAME $ZIP $TXT $URL
wget $URL
rm -f $TXT
unzip $ZIP
#chmod 777 ./$TXT

# MW
php /srv/http/wiki/w/extensions/StopForumSpam/maintenance/updateBlacklist.php
