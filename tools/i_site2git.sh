#! /bin/bash

[ $(hostname -s) != "lap2022-M2" ] && { echo "??? You must run it from the \"Master host\""; exit; } 
set -e

git="/Users/yb/github/sh.git"
sql2013="/Users/yb/Downloads/cms-pw-sh_iMac2013.sql"
sql="/Users/yb/Downloads/cms-pw-sh.sql"
sh="/Users/yb/Sites/sh/site"

function say(){
    echo; echo "=========================================================" $@
}

cd $git

say "Syncing modules is NOT done by this script, do it manually..."
sh_diff.sh
sh_diff.sh $sh/modules/ $git/site/modules/ | grep -v ^$
sleep 5

say "Cleaning assets"
$git/tools/compactor.sh

say "Cleaning site caches"
rm -rf $sh/assets/cache/* $sh/assets/sessions/* $sh/assets/logs/*

say "Syncing photos with git"
rsync -avc --delete $sh/assets/files/ $git/site/assets/files/
git add $git/site/assets/files/
git status site/assets/files/

say "DRY RUN Syncing assets with git"
#rsync -avcn --delete $sh/                $git/site/ --exclude assets/cache --exclude assets/logs --exclude assets/sessions --exclude assets/
rsync -avcn --delete $sh/                $git/site/ --exclude assets/
sleep 5

say "Exporting sql to git"
mysqldump -u yb -p --opt --ignore-table-data=cms-pw-sh.caches cms-pw-sh > $sql
sed  's/ COLLATE=.*;/;/' $sql      > $sql2013
cp -pvf $sql     $git/
cp -pvf $sql2013 $git/
git add $git/$(basename $sql)
git add $git/$(basename $sql2013)
git status *.sql
