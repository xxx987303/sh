#! /bin/bash
#
# Create a PHP script which checks the deleted /assets/files/

cat <<EOF > tt.php
<?php namespace ProcessWire;

require_once "/Users/yb/Sites/sh/index.php";

EOF

git status | \
    grep deleted | \
    grep assets/files/ | \
    awk -F/ '{print "$id = "$5"; $t=pages()->get("$5")->title; echo \"$id - $t\\n\";"}' | \
    grep -v .sv >> tt.php

rm -rf /tmp/t

php tt.php | sed -e "s/-/ /g" | grep "^[0-9]*.*[a-zA-Z]" | sed "s/ .*//" > /tmp/t

for t in $(cat /tmp/t); do
    echo git restore $(dirname $0)/../site/assets/files/$t
done

git status | grep -v '(use '|grep -E "assets/files/|Untracked|Changes to be|Changes not staged" 
