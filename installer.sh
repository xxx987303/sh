#!/bin/bash

dryRun=n

GIT=~/github/sh.git
SIT=~/Sites/sh

[ -n "$dryRun" ] && echo "...DRY RUN"
echo "Copying /assets/"
for dir in 1 5980 5907; do
    rsync -avc$dryRun --delete --exclude "*~" --exclude "#*#" \
	  $GIT/site/assets/files/$dir/ \
	  $SIT/site/assets/files/$dir/ | grep -v -E "^(Transfer|$|sent|total)|/$" | sed "s/^/  /"
done

echo "Copying /site/"
rsync -avc$dryRun --delete --exclude "*~" --exclude "#*#" --exclude assets \
      $GIT/site/ \
      $SIT/site/ | grep -v -E "^(Transfer|$|sent|total)|/$" | sed "s/^/  /"
