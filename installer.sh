#!/bin/bash

dryRun=n

GIT=~/github/sh.git
SIT=~/Sites/sh

[ -n "$dryRun" ] && echo "...DRY RUN"
for dir in 1 5980 5907; do
    rsync -avc$dryRun --delete --exclude "*~" \
	  $GIT/site/assets/files/$dir/ \
	  $SIT/site/assets/files/$dir/ | grep -v -E "^(Transfer|$|sent|total)" 
done

    rsync -avc$dryRun --delete --exclude "*~" --exclude assets \
	  $GIT/site/ \
	  $SIT/site/ | grep -v -E "^(Transfer|$|sent|total)|/$" 
