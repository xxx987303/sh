#! /bin/bash

[ -f All_for_import.txt ] && mv -vf All_for_import.txt All_for_import.txt.sv

php R_list2list.php       > R_list_for_import.txt
php Buk2list.php          > Buk_for_import.txt
php Kaplans2list.php      > Kaplans_for_import.txt
php Auctionet2list.php    > Auctionet_for_import.txt
php Metropol2list.php | grep -iE "Hermès|hermes|dior|omega" >Metropol_for_import.txt
cat \
    R_list_for_import.txt \
    Auctionet_for_import.txt \
    Buk_for_import.txt \
    Metropol_for_import.txt \
    Kaplans_for_import.txt | sort -t, -k2 > All_for_import.tmp

php All2list.php All_for_import.tmp>t 2>All2list.log
sdiff -sbB t All_for_import.txt.sv

echo ""
echo mv t All_for_import.txt
echo ""
