#! /bin/bash

php R2sh.php              > R_list_for_import.txt
php R2sh.php R_list2.txt >> R_list_for_import.txt
php Buk2list.php          > Buk_for_import.txt
php Kaplans2list.php      > Kaplans_for_import.txt
php Metropol2list.php | grep -iE "hermes|dior" >Metropol_for_import.txt
[ -f All_for_import.txt ] && mv -f All_for_import.txt All_for_import.txt~

cat \
    R_list_for_import.txt \
    Buk_for_import.txt \
    Metropol_for_import.txt \
    Kaplans_for_import.txt | sort -t, -k2 > t
sdiff -sbB t All_for_import.txt~

echo ""
echo mv t All_for_import.txt
echo ""
