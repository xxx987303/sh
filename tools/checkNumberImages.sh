#!/bin/bash

src=~/Sites/sh/site/assets/files/
for id in $(ls -1 $src); do
    [ -d "$src$id" ] || continue
    [ $id = 0000 ] && continue
    nfiles=0
    # nfiles=$(ls -1 $src$id/ | grep -v '\> ' | wc -l)
    for f in $(ls -1 $src$id/); do
	[ -L "$src$id/$f" ] &&	continue
	type=$(file $src$id/$f|grep -i image)
	[ -z "$type" ] && continue
	(( nfiles++ ))
    done
    (( $nfiles < 6 )) && continue 
    echo "$id - $nfiles"
    echo "ls -l $src/$id"
done
