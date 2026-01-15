#!/bin/bash

[ $(hostname -s) == "lap2022-M2" ] && { echo "??? You can't run it from the \"Master host\""; exit; } 

dryRun=n
[ -n "$dryRun" ] && echo "...DRY RUN"

GIT=~/github/sh.git
SIT=~/Sites/sh

echo "Copying /assets/"
rsync -avc$dryRun --delete --exclude "*~" --exclude "#*#" \
      $GIT/site/assets/files/ \
      $SIT/site/assets/files/ | grep -v -E "^(Transfer|$|sent|total)|/$" | sed "s/^/  /"

echo "Copying /site/"
rsync -avc$dryRun --delete --exclude "*~" --exclude "#*#" --exclude assets \
      $GIT/site/ \
      $SIT/site/ | grep -v -E "^(Transfer|$|sent|total)|/$" | sed "s/^/  /"
