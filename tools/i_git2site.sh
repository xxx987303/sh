#!/bin/bash
#
# iMac2013 runs an old mysql, old php, etc, be carefull...
#

[ $(hostname -s) == "lap2022-M2" ] && { echo "??? You can't run it from the \"Master host\""; exit; } 

function say(){
    echo; echo "=========================================================" $@
}

dryRun=
[ -n "$dryRun" ] && echo "...DRY RUN"

[ $(hostname -s) = "iMac2013" ] && SQL="cms-pw-sh_iMac2013.sql" || SQL="cms-pw-sh.sql"
say "SQL file is \"$SQL\""
DB=cms-pw-sh
GIT=~/github/sh.git
SIT=~/Sites/sh

say "Copying /assets/"
rsync -avc$dryRun --delete --exclude "*~" --exclude "#*#" \
      $GIT/site/assets/files/ \
      $SIT/site/assets/files/ | grep -v -E "^(Transfer|$|sent|total)|/$" | sed "s/^/  /"

say "Copying /site/"
rsync -avc$dryRun --delete --exclude "*~" --exclude "#*#" --exclude assets \
      $GIT/site/ \
      $SIT/site/ | grep -v -E "^(Transfer|$|sent|total)|/$" | sed "s/^/  /"

say "Refreshing database"
set -x
mysql -u yb -p $DB < $GIT/$SQL
