#! /bin/bash

R=$(cd $(dirname $0); pwd -P)
cd $R

function countDots() {
#    a=( $(echo $1|sed 's/\./ /g') )
#    echo 0=${a[0]} 1=${a[1]} 2=${a[2]} 3=${a[3]}
    n=$(echo $1 | while read -r line; do
	    dots=${line//[^.]}
	    printf '%d\n' ${#dots}
	done)
    echo $n
}

testLine="test.of.counter.."
echo "got reply countDots($testLine)="$(countDots $testLine)
echo "------------------------------------_--------"
#exit

for parentDir in $(ls -1 $R); do
    cd $R/$parentDir 2>/dev/null || continue
    echo ==========================$parentDir
    for item in $(ls -1); do
	#echo "---$item"
	if [[ -d $item ]]; then
	    echo "  dir  $item"
	elif [[ -h "$item" ]]; then
	    echo "  link $item"
	elif [[ -f "$item" ]]; then
	    image=$(file "$item" 2>&1| grep --color image)
	    json=$(file "$item" 2>&1| grep --color JSON)
	    [ -n "$json" ] && continue
	    [ -n "$image" ] && {
		echo "  img $item"
		a=($(echo $item|sed 's/\./ /g'))
		n=$(countDots $item)
		#echo n=$n ${a[0]} ${a[1]}
		[ -z "$n" ] && { echo '????????'; exit; }
		root=${a[0]}.${a[$n]}
		[ -f $root ] || { echo "????? '$root' is not root"; exit; }

		if [[ $item = $root ]]; then
		    # We got the root file
		    echo "  -- Got root $root"
		    continue
		else
		    # Remove the file to save space, replace it by a link
		    echo "  rm -f $item && ln -svf $root $item"; 
		fi

	    } || {
		echo "????????"
		exit
	    }
	else
	    echo "???  $item"
	fi
    done
done

