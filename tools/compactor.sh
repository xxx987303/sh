#! /bin/bash
# YB 2025-11-04
#
# Replace by symbolic liks the image files.
# Would be nice to replace JPEG fils by WEBP, but native ProcessWire rejects those
#

dryRun=

# ProcessWire images location
# R=$(cd $(dirname $0); pwd -P | sed s,/tools.*$,,)/site/assets/files
R=/Users/yb/Sites/sh/site/assets/files

# Returns number of dots in the input string
function countDots() {
    n=$(echo $1 | while read -r line; do
	    dots=${line//[^.]}
	    printf '%d\n' ${#dots}
	done)
    [ -z "$n" ] && {
	echo "??? countDots gives no answer for \"$1\""
	exit 1
    }
    echo $n
}

for parentDir in $(ls -1 $R); do
    cd $R/$parentDir 2>/dev/null || continue
    [ $R = /Users/yb/github/sh.git/site/assets/filesX ] && {
	if [[ -z "$dryRun" ]]; then
	    [ $parentDir != 1 ] && [ $parentDir != 5980 ] && [ $parentDir != 5907 ] && \
		[ $parentDir != 5830 ] && [ $parentDir != 5839 ] && [ $parentDir != 5840 ] && \
		[ $parentDir != 5835 ] && [ $parentDir != 6087 ] && [ $parentDir != 5900 ] && \
		[ $parentDir != 6106 ] && [ $parentDir != 5841 ] && continue
	fi
    }

    nacts=0
    for item in $(ls -1); do
	if [[ -d $item ]]; then
	    echo -n
	elif [[ -h "$item" ]]; then
	    [ -a $item ] || {
		[ $nacts = 0 ] && echo ==========================$parentDir
		(( nacts++ ))
		echo -n "  --drop link "
		[ -z "$dryRun" ] && rm -vf $item || echo $item
	    }
	elif [[ -f "$item" ]]; then
	    [ -n "$(file "$item" 2>&1| grep JSON)" ] && continue
	    [ -n "$(file "$item" 2>&1| grep image)" ] && {
		a=($(echo $item|sed 's/\./ /g'))
		n=$(countDots $item)
		root=${a[0]}.${a[$n]}
		
		if [ ! -f $root ]; then
		    echo "????? '$root' is not in the root"
		    exit
		fi
		
		
		if [[ $item = $root ]]; then
		    # We got the root file
		    echo -n #		    [ -n "$dryRun" ] && echo "    GOT ROOT $root"
		else
		    # Remove the file to save space, replace it by a link
		    [ $nacts = 0 ] && echo ==========================$parentDir
		    (( nacts++ ))
                    [ -n "$dryRun" ] &&
			{ echo "    cd $R/$parentDir && rm -f $item && ln -svf $root $item";
			} ||      { cd $R/$parentDir && rm -f $item && ln -svf $root $item; }
		fi
	    }
	else
	    echo "???  $item"
	fi
    done
done
