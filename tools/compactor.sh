#! /bin/bash
# YB 2025-11-04
#
# Replace by symbolic liks the image files.
# Would be nice to replace JPEG fils by WEBP, but native ProcessWire rejects those 
#

WEBP='NO!!'
dryRun='y'

# ProcessWire images location
R=$(cd $(dirname $0)/../site/assets/files; pwd -P)

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
# [ $parentDir != 1 ] && [ $parentDir != 5980 ] && [ $parentDir != 5907 ] && continue
    echo ==========================$parentDir
    for item in $(ls -1); do
	#echo "---$item"
	if [[ -d $item ]]; then
	    echo "  --dir  $item"
	elif [[ -h "$item" ]]; then
	    echo "  --link $item"
	elif [[ -f "$item" ]]; then
	    image=$(file "$item" 2>&1| grep --color image)
	    json=$(file "$item" 2>&1| grep --color JSON)
	    [ -n "$json" ] && continue
	    [ -n "$image" ] && {
		echo -n "  --img $item"
		
		a=($(echo $item|sed 's/\./ /g'))
		n=$(countDots $item)
		rootO=${a[0]}.${a[$n]}
		rootW=${a[0]}.webp
		[ $WEBP = 'y' ] && {
		    if [ ${a[$n]} = "webp" ]; then continue; fi
		    root=$rootW
		    if [ ! -f $rootW ]; then ln -svf $rootO $rootW; fi 
		    itemW=$(echo $item|sed s/${a[$n]}/webp/)
		    echo "        $itemW"
		} || {
		    root=$rootO
		}
		
		if [ ! -f $root ]; then
		    echo "????? '$root' is not in the root"
		    exit
		fi
		
		
		if [[ $item = $root ]]; then
		    # We got the root file
		    echo "    GOT ROOT $root"
		elif [ $WEBP = 'y' ]; then
		    echo -n
		else
		    # Remove the file to save space, replace it by a link
		    echo; echo "    cd $R/$parentDir && rm -vf $item && ln -svf $root $item"; 
		fi
	    }
	else
	    echo "???  $item"
	fi
    done
done

#testLine="test.of.counter.."
#echo "got reply countDots($testLine)="$(countDots $testLine)
#echo "--------------------------------------------"

