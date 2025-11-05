#! /bin/bash
# YB 2025-11-04
#
# Replace by symbolic liks the image files.
# Would be nice to replace JPEG fils by WEBP, but native ProcessWire rejects those 
#

WEBP='NO!!'
dryRun=

# ProcessWire images location
R=$(cd $(dirname $0); pwd -P | sed s,/tools.*$,,)/site/assets/files
echo $R | sed s,/site.*$,,
echo $R | sed s,/site.*$,,
echo $R | sed s,/site.*$,,
echo
sleep 3

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
    [ $parentDir != 1 ] && [ $parentDir != 5980 ] && [ $parentDir != 5907 ] && \
	[ $parentDir != 5830 ] && [ $parentDir != 5839 ] && [ $parentDir != 5835 ] && [ $parentDir != 6087 ] && continue
    echo ==========================$parentDir
    for item in $(ls -1); do
	if [[ -d $item ]]; then
	    [ -n "$dryRun" ] && echo "  --dir  $item"
	elif [[ -h "$item" ]]; then
	    [ -n "$dryRun" ] && echo "  --link $item"
	elif [[ -f "$item" ]]; then
	    [ -n "$(file "$item" 2>&1| grep JSON)" ] && continue
	    [ -n "$(file "$item" 2>&1| grep image)" ] && {
		[ -n "$dryRun" ] && echo -n "  --img $item"
		
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
		    [ -n "$dryRun" ] && echo "    GOT ROOT $root"
		elif [ $WEBP = 'y' ]; then
		    echo -n
		else
		    # Remove the file to save space, replace it by a link
		    [ -n "$dryRun" ] && { echo; echo "    cd $R/$parentDir && rm -vf $item && ln -svf $root $item";
		    } ||                                { cd $R/$parentDir && rm -vf $item && ln -svf $root $item; }
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

