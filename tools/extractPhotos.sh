#! /bin/bash

src=$(cd $(dirname $0); pwd -P);
echo $src
exportArea=/tmp/Hermes
index=~/Downloads/Hermes/index.php
LOG=$src/extractPhotos.log

rm -rf   $exportArea
mkdir -p $exportArea && cd $exportArea
[ -f $LOG ] && mv -vf $LOG $LOG~
ln -svf $index index.php || exit 1
echo ... osxphotos export
osxphotos export  --skip-original-if-edited   --update $exportArea >& $LOG
rm -fv $exportArea/*.mov
echo ... Resizing images
python3 ~/github/sh.git/tools/resizeImages.py | grep -v " 1 - " >> $LOG

sdiff -sbB $LOG~ $LOG
echo Done...
exit

osxphotos export \
	  --post-function ~/github/sh.git/tools/post_function.py::post_function \
	  --in-album --update /tmp/Hermes
