#! /bin/bash
#
# Replace "платок" by "carré" in the sql file
#
set -x

cms='cms-pw-sh.sql'
cp -pvf $cms $cms.original

sed -i~~ \
    -e 's/ScarfSage/otherwebsitesbouthrms/i' \
    -e 's/Scarf Guides/JeffHrmsCollection/g' \
    $cms

sed -i~ \
    -e s/платок/carré/g \
    -e s/платкa/carré/g \
    -e s/платки/carrés/g \
    -e s/Платок/Carré/g \
    -e s/Платки/Carrés/g \
    $cms
#    -e s/scarf/carré/g \
#    -e s/Scarf/Carré/g \
#    -e s/scarves/carrés/g \
#    -e s/Scarves/Carrés/g \

sed -i~~~ \
    -e 's/JeffHrmsCollection/Scarf Guides/g' \
    -e 's/otherwebsitesbouthrms/ScarfSage/i' \
    $cms

