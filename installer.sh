#!/bin/bash

exit

dryRun=n
[ -n "$dryRun" ] && echo "...DRY RUN"

GIT=~/github/sh.git
SIT=~/Sites/sh

echo "Copying /assets/"
#for dir in ($ls -1 $GIT/site/assets/files/) ; do
#    rsync -avc$dryRun --delete --exclude "*~" --exclude "#*#" \
#	  $GIT/site/assets/files/$dir/ \
#	  $SIT/site/assets/files/$dir/ | grep -v -E "^(Transfer|$|sent|total)|/$" | sed "s/^/  /"
#do
rsync -avc$dryRun --delete --exclude "*~" --exclude "#*#" \
      $GIT/site/assets/files/ \
      $SIT/site/assets/files/ | grep -v -E "^(Transfer|$|sent|total)|/$" | sed "s/^/  /"

echo "Copying /site/"
rsync -avc$dryRun --delete --exclude "*~" --exclude "#*#" --exclude assets \
      $GIT/site/ \
      $SIT/site/ | grep -v -E "^(Transfer|$|sent|total)|/$" | sed "s/^/  /"
